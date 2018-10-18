#https://docs.rolln.de/knoppo/xtract/master/



import os 
from six.moves import urllib
import zipfile, re, io
from xtract import xtract



def download_file():                                                                                     
#downloads file                                                                                          
                                                                                                         
        parent_zip = 'dump.zip'                                                                          
        website = 'https://storage.googleapis.com/gctf-2018-attachments/2cdc6654fb2f8158cd976d8ffac28218b15d052b5c2853232e4c1bafcb632383'                                                                         
        urllib.request.urlretrieve(website, parent_zip)                                                  
                                                                                                         
                                             
def test():                                  
        filename = 'dump.zip'                
        if zipfile.is_zipfile(filename):
		extract(filename)
		print("this is a zipfile")

	else:
		print("not a zipfile")


def extract(filename):
	xtract('dump.zip', overwrite=True, keep_intermediate=False, all=True)
	print("extracting")

if __name__ == "__main__":     
        download_file()        
        test()                 
   


                                                                                                         
                                                                                                         




