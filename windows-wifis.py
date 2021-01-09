import subprocess
import re

command_output = subprocess.run(["netsh", "wlan", "show", "profiles"], capture_output = True).stdout.decode()
# profile_names = (re.findall("All User Profile     : (.*)\r", command_output))

profile_names1 = command_output.split('Perfil de todos los usuarios     : ')

profile_names1.pop(0)

profile_names = []

for wifi in profile_names1:
    wifi = wifi.split('\r')[0].strip()
    # print (wifi)
    profile_names.append(wifi)

print("\nConexiones:", profile_names, '\n\n')
wifi_list = list()


if len(profile_names) != 0:
    for name in profile_names:
        wifi_profile = dict()
        profile_info = subprocess.run(["netsh", "wlan", "show", "profile", name], capture_output = True).stdout

        # if re.search("Security key           : Absent", profile_info):
        #     continue
        # else:
        wifi_profile["ssid"] = name
        profile_info_pass = subprocess.run(["netsh", "wlan", "show", "profile", name, "key=clear"], capture_output = True).stdout.decode(encoding='utf8', errors='ignore')
        # password = re.search("Contenido de la clave            : (.*)\r", profile_info_pass)
        # print(profile_info_pass)
        try:
            password = profile_info_pass.split('Contenido de la clave  :')[1].split('\r')[0].strip()
        except:
            password = None
        if password == None:
            wifi_profile["password"] = None
        else:
            wifi_profile["password"] = password
        wifi_list.append(wifi_profile) 
else:
    print("Nothing")

for x in range(len(wifi_list)):
    print(wifi_list[x])
