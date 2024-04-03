package='nltko'
folder_info='./nltko.egg-info'
file='nltko-0.0.1-py2.py3-none-any.whl'

# python3.10 setup.py bdist_wheel
python3 -m pip install --upgrade build
python -m build
mv ./dist/*.whl ./
rm -rf dist build "$folder_info"

# pip uninstall konews -y 
# pip install konews-0.0.1-py3-none-any.whl

# Jupyter Lab
deactivate
source /home/buffet/Coding/venv/Py/bin/activate
pip uninstall "$package" -y
pip install "$file"

# New Market
deactivate
source /home/buffet/Coding/React/NewMarket/.venv/bin/activate
pip uninstall "$package" -y
pip install "$file"
