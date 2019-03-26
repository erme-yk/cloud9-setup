#! /bin/bash
 
python --version
sed -i -e 's/python=python27/python=python36/g' ~/.bashrc 
source  ~/.bashrc 
echo "select python3.6 number"
sudo update-alternatives --config python
python --version
pip --version
       


   
   
