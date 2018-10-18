
#https://docs.python.org/2/library/zipfile.html


import os
from six.moves import urllib
import zipfile, re, io





def download_file():
#downloads file                                                                                          

        parent_zip = 'dump.zip'
        website = 'https://storage.googleapis.com/gctf-2018-attachments/2cdc6654fb2f8158cd976d8ffac28218b15d052b5c2853232e4c1bafcb632383'
        urllib.request.urlretrieve(website, parent_zip)




#def extract_nested_zip():
#       zfiledata = BytesIO(zfile.read("parent_zip))


def test():
        filename = 'dump.zip'
        if zipfile.is_zipfile(filename):
                f = zipfile.ZipFile(filename)
                for name in f.namelist():
                        content = io.BytesIO(f.read(name)) 
                        zip_file = zipfile.ZipFile(content) 
                        for i in zip_file.namelist():
                                print i
        else:
                print("didnt work")



if __name__ == "__main__":          
        download_file()             
        test() 
#       extract_nested_zip()                                                                                                               
