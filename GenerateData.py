import pandas as pd

# Datos de ejemplo para enero
df_enero = pd.DataFrame({
    'provincia_id': [6, 6],
    'provincia_nombre': ['Buenos Aires', 'Buenos Aires'],
    'genero': ['F', 'M'],
    'edad_actual_grandes_grupos': ['0 a 17', '0 a 17'],
    'cantidad': [100, 150]
})
df_enero.to_csv('datos/datos_enero.csv', index=False)

# Datos para febrero
df_febrero = pd.DataFrame({
    'provincia_id': [6, 6],
    'provincia_nombre': ['Buenos Aires', 'Buenos Aires'],
    'genero': ['F', 'M'],
    'edad_actual_grandes_grupos': ['18 a 29', '18 a 29'],
    'cantidad': [200, 180]
})
df_febrero.to_csv('datos/datos_febrero.csv', index=False)

# Datos para marzo
df_marzo = pd.DataFrame({
    'provincia_id': [6, 6],
    'provincia_nombre': ['Buenos Aires', 'Buenos Aires'],
    'genero': ['F', 'M'],
    'edad_actual_grandes_grupos': ['30 a 39', '30 a 39'],
    'cantidad': [250, 300]
})
df_marzo.to_csv('datos/datos_marzo.csv', index=False)
