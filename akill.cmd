for %%i in ("SCNotification.exe","eecwatch.exe","ccmexec.exe","RuntimeBroker.exe","cwservice.exe") do taskkill /im %%i /f
shutdown -a
