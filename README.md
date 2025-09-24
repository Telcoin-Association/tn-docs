# 1) Clone and switch to the MkDocs branch
git clone https://github.com/leopashov/tn-docs.git
cd tn-docs
git checkout docs/mkdocs-material

# 2) (optional but recommended) create a virtual env
python3 -m venv .venv
source .venv/bin/activate

# 3) Install requirements
pip install --upgrade pip
pip install mkdocs-material pymdown-extensions mkdocs-redirects

# 4) Serve locally
mkdocs serve
# open the URL printed in the terminal (usually http://127.0.0.1:8000)
