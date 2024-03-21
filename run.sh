package='konews'
folder_info='./konews.egg-info'
file='konews-0.0.1-py3-none-any.whl'

python3.10 setup.py bdist_wheel
mv ./dist/*.whl ./
rm -rf dist build "$folder_info"

# pip uninstall konews -y 
# pip install konews-0.0.1-py3-none-any.whl

# Jupyter Lab
deactivate
source /home/buffet/Coding/venv/Py/bin/activate
pip uninstall konews -y 
pip install konews-0.0.1-py3-none-any.whl

# New Market
deactivate
source /home/buffet/Coding/React/NewMarket/.venv/bin/activate
pip uninstall konews -y 
pip install konews-0.0.1-py3-none-any.whl
