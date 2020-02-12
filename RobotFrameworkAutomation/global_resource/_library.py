import random
import csv
import os
import pyperclip
from pathlib import Path

class _library( object ):
    
    ROOT_DIR = os.path.dirname(os.path.abspath(__file__))

    
    def random_number( self ):
        return round( random.random() * 10000 )


    def random_company_name( self ):
        filename = Path( self.ROOT_DIR + "/" + "csv/company.csv" )
        return self.__readcsvfile( str(filename) )


    def random_first_name( self ):
        filename = Path( self.ROOT_DIR + "/" + "csv/fn.csv" )
        return self.__readcsvfile( str(filename) )


    def random_last_name( self ):
        filename = Path( self.ROOT_DIR + "/" + "csv/ln.csv" )
        return self.__readcsvfile( str(filename) )


    def random_skill_name( self ):
        filename = Path( self.ROOT_DIR + "/" + "csv/skill.csv" )
        return self.__readcsvfile( str(filename) )


    def random_dept_name( self ):
        filename = Path( self.ROOT_DIR + "/" + "csv/dept.csv" )
        return self.__readcsvfile( str(filename) )


    def __readcsvfile( self, filename ):
        file = open( filename, 'r' )
        csvfile = csv.reader( file )
        file.close
        result = random.choice( [ row for row in csvfile ] )
        return result[0]

    def booleaner( self ):
        return random.randint(0, 100) % 2

    def getsystemclipboardcontent( self ):
        result = pyperclip.paste()
        return result