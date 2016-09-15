import subprocess,os,threading;
 
def run_command(cmd,os_name='posix'):
	p = subprocess.Popen(cmd,shell=True,cwd=os.getcwd())
	output,err = p.communicate()
	print 'output=%s'%output
	print 'err=%s'%err
	return output
	
def start_appium_server(appium_command):
    t=threading.Thread(target=run_command,args=(appium_command,))
    t.daemon=True
    t.start()
	    
    
	     
	    
