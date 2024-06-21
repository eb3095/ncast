# ncast
A headless OBS environment in a container. The app ise exposed via a web frontend for use via XPRA. This allows
for a completely web delivered OBS with full GPU acceleration.

Currently this is only tested on NVIDIA products and configured to use nvenc.

### Building
```
. .INFO
docker build -t "ncast-cuda${CUDA_VERSION}-ubuntu${UBUNTU_VERSION}" .
```

### Usage
Please see the included manifests included for Helm and Kubernetes to see how to deploy this container effectively!
You can find them in the "templates" folder.

### Screenshots
TODO

### Credits
For now we support open source contributors and use only projects with open licenses. If you are going to
support this project, considering throwing one of the listed people a hand as well!

#### Developers
* Eric Benner (eb3095)

#### Art
Hey, not artists here. Want to engage but not technical? Heres a chance! We could use custom art work.

* \[Background.png\] darkdissolution - https://www.deviantart.com/darkdissolution/art/Abstract-Wallpaper-Free-to-Use-96-938676956