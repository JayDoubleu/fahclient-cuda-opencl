# fahclient-cuda-opencl

https://foldingathome.org/support/faq/installation-guides/linux/command-line-options/ 

```shell
git clone https://github.com/JayDoubleu/fahclient-docker-cuda-opencl.git
cd fahclient-docker-cuda-opencl
docker build -t fahclient .
docker run -d -it --rm --runtime=nvidia fahclient --user=<username> --team=<team number> --gpu=true --smp=true
```
