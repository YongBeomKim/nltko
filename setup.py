from setuptools import setup, find_packages
with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

setup(
    name    = 'nltko',
    version = '0.0.1',
    license = 'The Unlicense',
    description = "Personally tiny useful nltk of korean tips",
    long_description = long_description,
    long_description_content_type = 'text/markdown',
    url = 'https://github.com/YongBeomKim/nltko',
    author = 'momukji lab',
    author_email = 'ybkim@momukji.com',
    keywords = ['pytip'],
    include_package_data = True,
    package_data = {'': ['json/*.json']}, # 파일추가
    packages     = find_packages(
        exclude  = ['jupyter', 'backup', '.vscode', '.ipynb_checkpoints']
    ),
    install_requires=[
        'nltk',
        'tqdm',
        'pytip',
        'konlpy',
        'kiwipiepy',
    ],
    python_requires = '>=3.6',
    classifiers=[
        'Programming Language :: Python :: 3.9',
        'Programming Language :: Python :: 3.10',
        'Programming Language :: Python :: 3.11',
    ],
)
