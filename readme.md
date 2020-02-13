Based on Kali rolling https://hub.docker.com/r/kalilinux/kali-rolling

Run
```
docker run -it --rm -w /data -v $(pwd):/data markpepapa/kali-docker /bin/bash
```

Installed Applications:
- Kali metapackage **offsec-awae**: Advanced Web Attacks and Exploitation
- Kali metapackage **offsec-pwk**: Penetration Testing with Kali
- crackmapexec
- empire

References:

https://tools.kali.org/kali-metapackages
