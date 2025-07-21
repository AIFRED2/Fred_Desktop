set -e
#--------------------------------------------------------------------------
# 1) Crear el virtualenv
if command -v python3 &> /dev/null; then
  python3 -m venv venv
else
  python -m venv venv
fi
#--------------------------------------------------------------------------
# 2) Activar el entorno (Windows vs. Linux)
if [ -f venv/Scripts/activate ]; then
  source venv/Scripts/activate
elif [ -f venv/bin/activate ]; then
  source venv/bin/activate
else
  echo "ERROR: no encontré venv/Scripts/activate ni venv/bin/activate"
  exit 1
fi
#--------------------------------------------------------------------------
# 3) Actualizar pip e instalar dependencias
python -m pip install --upgrade pip
python -m pip install -r requirements.txt pyinstaller
#--------------------------------------------------------------------------
# 4) Limpiar builds previos
rm -rf dist build dist_app || true
#--------------------------------------------------------------------------
# 5) Empaquetar con PyInstaller e incrustar el icono
python -m PyInstaller \
  --onefile \
  --windowed \
  --name control_fred \
  --icon=App_Logo.ico \
  src/Interface.py
#--------------------------------------------------------------------------
# 6) Mover el ejecutable final a dist_app/
mkdir -p dist_app
cp dist/control_fred.exe dist_app/
#--------------------------------------------------------------------------
# 7) Mensaje final
echo "Empaquetado completado. El ejecutable está en dist_app/control_fred.exe"
echo "Crea un acceso directo desde el dist_app para el escritorio."
#--------------------------------------------------------------------------