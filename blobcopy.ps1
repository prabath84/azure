azcopy login # Login 

azcopy copy 'https://fntrainingvideos.blob.core.windows.net/test2?sv=2020-04-08&st=2021-06-22T07%3A08%3A06Z&se=2021-06-23T07%3A08%3A06Z&sr=c&sp=rl&sig=sm3dBTOqW8cnMUUXSCQYOmQFNSRO0VpK7HBADifMjUE%3D' 'https://fnsite.blob.core.windows.net/test2' --recursive

#endregion
