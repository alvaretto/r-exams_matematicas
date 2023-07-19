# Importamos las librerías necesarias
import requests
import json
import numpy as np

# Definimos la función que calcula el indicador Ichimoku
def ichimoku(df):
  # Calculamos los valores de la línea Tenkan-sen
  df['tenkan_sen'] = (df['high'].rolling(9).max() + df['low'].rolling(9).min()) / 2

  # Calculamos los valores de la línea Kijun-sen
  df['kijun_sen'] = (df['high'].rolling(26).max() + df['low'].rolling(26).min()) / 2

  # Calculamos los valores de la línea Chikou span
  df['chikou_span'] = df['close'].shift(-26)

  # Calculamos los valores de la línea Senkou span A
  df['senkou_span_a'] = ((df['tenkan_sen'] + df['kijun_sen']) / 2).shift(26)

  # Calculamos los valores de la línea Senkou span B
  df['senkou_span_b'] = (df['high'].rolling(52).max() + df['low'].rolling(52).min()) / 2.shift(26)

  # Calculamos los valores de la línea Kumo o nube
  df['kumo'] = df[['senkou_span_a', 'senkou_span_b']].min(axis=1)

  return df

# Definimos la función que realiza el trading
def trade(df):
  # Inicializamos la variable que indica si tenemos una posición abierta
  position_open = False

  # Iteramos a través de cada fila del dataframe
  for i, row in df.iterrows():
    # Si no tenemos una posición abierta, miramos si debemos abrir una
    if not position_open:
      # Si el precio está por encima de la nube y el Tenkan-sen cruza al alza el Kijun-sen, abrimos una posición larga
      if row['close'] > row['kumo'] and row['tenkan_sen'] > row['kijun_sen']:
        # Realizamos una llamada a la API para abrir la posición
        url = "https://api.tradingplatform.com/trade/open"
        payload = {'instrument': 'eurusd', 'units': 1000, 'side': 'buy'}
        headers = {'Content-Type': 'application/json'}
        response = requests.post(url, json=payload, headers=headers)
        # Si la llamada ha sido exitosa, actualizamos la variable que indica si tenemos una posición abierta
        if response.status_code == 200:
          position_open = True
          print(f'Posición larga abierta en {row["time"]}')
        else:
          print(f'Error al abrir la posición larga: {response.text}')
      # Si el precio está por debajo de la nube y el Tenkan-sen cruza a la baja el Kijun-sen, abrimos una posición corta
      elif row['close'] < row['kumo'] and row['tenkan_sen'] < row['kijun_sen']:
        # Realizamos una llamada a la API para abrir la posición
        url = "https://api.tradingplatform.com/trade/open"
        payload = {'instrument': 'eurusd', 'units': 1000, 'side': 'sell'}
        headers = {'Content-Type': 'application/json'}
        response = requests.post(url, json=payload, headers=headers)
        # Si la llamada ha sido exitosa, actualizamos la variable que indica si tenemos una posición abierta
        if response.status_code == 200:
          position_open = True
          print(f'Posición corta abierta en {row["time"]}')
        else:
          print(f'Error al abrir la posición corta: {response.text}')
    # Si tenemos una posición abierta, miramos si debemos cerrarla
    else:
      # Si el precio cruza al alza la nube desde abajo, cerramos la posición corta
      if row['close'] > row['kumo'] and df.loc[i-1, 'close'] < df.loc[i-1, 'kumo']:
        # Realizamos una llamada a la API para cerrar la posición
        url = "https://api.tradingplatform.com/trade/close"
        payload = {'instrument': 'eurusd'}
        headers = {'Content-Type': 'application/json'}
        response = requests.post(url, json=payload, headers=headers)
        # Si la llamada ha sido exitosa, actualizamos la variable que indica si tenemos una posición abierta
        if response.status_code == 200:
          position_open = False
          print(f'Posición corta cerrada en {row["time"]}')
        else:
          print(f'Error al cerrar la posición corta: {response.text}')
      # Si el precio cruza a la baja la nube desde arriba, cerramos la posición larga
      elif row['close'] < row['kumo'] and df.loc[i-1, 'close'] > df.loc[i-1, 'kumo']:
        # Realizamos una llamada a la API para cerrar la posición
        url = "https://api.tradingplatform.com/trade/close"
        payload = {'instrument': 'eurusd'}
        headers = {'Content-Type': 'application/json'}
        response = requests.post(url, json=payload, headers=headers)
        # Si la llamada ha sido exitosa, actualizamos la variable que indica si tenemos una posición abierta
        if response.status_code == 200:
          position_open = False
          print(f'Posición larga cerrada en {row["time"]}')
        else:
          print(f'Error al cerrar la posición larga: {response.text}')

# Descargamos los precios de eurusd en temporalidad de 10 minutos
df = download_prices('eurusd', '10m')

# Añadimos el indicador Ichimoku al dataframe
df = ichimoku(df)

# Realizamos el trading
trade(df)

####################################################################################


