---
layout: default_1
---

In this project, we conducted a series of studies on residential proxies between 2017 and 2022, rendering multiple papers published in top security venues and respective datasets released, as detailed below.

# Residential Proxies in China
Our latest study in this project moves the spotlight to the ecosystem of residential proxies in China, and we have one paper accepted by CCS 2022 under the title of *An Extensive Study of Residential Proxies in China*. **We are working to release the relevant datasets and source code, and will provide updates here"

# Mobile Devices Serving as Residential Proxies
Between 2019 and 2021, we carried out a follow-up work dedicated to profiling the controversial recruitment of mobile devices into residential proxies, and you can learn more from our NDSS paper *Your Phone is My Proxy: Detecting and Understanding Mobile Proxy Networks*. And the relevant datasets can be found in [this github repository](https://github.com/OnionSecurity/mpaas).

```bibtex
@inproceedings{mi2021your,
  title={Your Phone is My Proxy: Detecting and Understanding Mobile Proxy Networks},
  author={Mi, Xianghang and Tang, Siyuan and Li, Zhengyi and Liao, Xiaojing, and Qian, Feng and Wang, Xiaofeng},
  booktitle={NDSS},
  year={2021}
}
```

# Residential Proxies as a Service
Between May 2017 and March 2018, we conducted a comprehensive study on the emerging residential IP proxy as a service (RPaaS). Our study identified lots of interesting findings and answered several important questions around RPaaS. 
You can refer to [our paper](https://mixianghang.github.io/pubs/rpaas.pdf) (published on IEEE S&P 2019) and [my blog article](https://medium.com/@xianghangmi/resident-evil-understanding-residential-ip-proxy-as-a-dark-service-dea9010a0e29?sk=1b84f109431dfd92a0c73ec101b21289) for more information. Here, we will not go through those details, but  focus on datasets and sourcecode, which may facilitate future research.

To cite our work, please use the following bibtext.
```bibtex
@inproceedings{mi2019resident,
  title={Resident Evil: Understanding Residential IP Proxy as a Dark Service},
  author={Mi, Xianghang and Feng, Xuan and Liao, Xiaojing and Liu, Baojun and Wang, XiaoFeng and Qian, Feng and Li, Zhou and Alrwais, Sumayah and Sun, Limin and Liu, Ying},
  booktitle={2019 IEEE Symposium on Security and Privacy (SP)},
  year={2019},
  organization={IEEE}
}
```

Feel free to [email me](mailto:xmi@iu.edu) :blush: for any questions. And you can also [find me on Twitter](https://twitter.com/thinkForever1). 
<!--Furthermore, **[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=TKKLW85SU99TU&currency_code=USD&source=url) will be very helpful to support my follow-up projects.**-->
## Data
**[IP addresses captured as residential web proxies](https://drive.google.com/file/d/1CFpWbn5NW1GRtzlB35tpdc3yGhQ9l1Hf/view?usp=sharing)**. We infiltrated 5 RPaaS providers between July 2017 and March 2018, which captured more than 6M IPv4 addresses acting as exit nodes for our infiltration traffic. You can download those IP addresses [here](https://drive.google.com/file/d/1CFpWbn5NW1GRtzlB35tpdc3yGhQ9l1Hf/view?usp=sharing) wherein each line denotes an unique IP address along with some important attributes, separated by Tab.
* First captured date  
  The format is Year-Month-Day (e.g., 2019-02-05).
* Last captured date  
  The format is Year-Month-Day (e.g., 2019-02-05).
* Number of distinct days when this IP address was captured  
  This attribute counts the number of days  having this IP address captured relaying our traffic.
* Providers  
  This attribute represent which providers this IP address was captured from. Provider names are concatenated by underline

**[IP addresses used to train the residential IP classifier](https://drive.google.com/open?id=14MglpY2dPunVL3ci4Q_rtgJObrFClc6V)**. We collected 10K residential and 10K non-residential IP addresses to train our residential IP classifier, you can access those IP addresses [here](https://drive.google.com/open?id=14MglpY2dPunVL3ci4Q_rtgJObrFClc6V).

**[Samples identified to relay our infiltration traffic](data/proxy_peer_sample_md5s.txt)**. In our study, we identified 67 various program samples relaying our infiltration traffic, and many of them were reported as suspicious by some anti-virus engines. 
## Source Code
The source code can be accessed here: [https://github.com/mixianghang/RPaaS](https://github.com/mixianghang/RPaaS) , and it includes the following two components.
* The infiltration framework especially the infiltration clients and servers
* The IP fingerprinting tool
