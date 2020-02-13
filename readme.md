Based on Kali rolling https://hub.docker.com/r/kalilinux/kali-rolling

Run
```
docker run -it --network host --rm -w /data -v $(pwd):/data markpepapa/kali-docker /bin/bash
```

Installed Applications:
- offsec-awae: Advanced Web Attacks and Exploitation
- offsec-pwk: Penetration Testing with Kali
- crackmapexec
- empire

References:

https://tools.kali.org/kali-metapackages
