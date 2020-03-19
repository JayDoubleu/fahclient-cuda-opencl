# fahclient-cuda-opencl

https://foldingathome.org/support/faq/installation-guides/linux/command-line-options/ 

```shell
git clone git@github.com:JayDoubleu/fahclient-cuda-opencl.git
cd fahclient-cuda-opencl
docker built -t fahclient .
docker run -d -it --rm --runtime=nvidia fahclient --user=<username> --team=<team number> --gpu=true --smp=true
```
