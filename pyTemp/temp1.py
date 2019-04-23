import configparser

filename = "./testdata/config.txt"

config = configparser.ConfigParser()
config.read(filename)
print(config)
connection_string = ("dbname='%(dbname)s' user='%(dbuser)s' host='%(host)s' "
                     "password='%(password)s' port='%(port)s'")

print(connection_string %config.items(1))