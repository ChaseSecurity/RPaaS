---
layout: default_1
---

In this project, we conducted a series of studies on residential proxies between 2017 and 2022, rendering multiple papers published in top security venues and respective datasets released, as detailed below.

Feel free to [email me](mailto:xianghangmi@gmail.com) :blush: for any questions. And you can also [find me on Twitter](https://twitter.com/thinkForever1). 
<!--Furthermore, **[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=TKKLW85SU99TU&currency_code=USD&source=url) will be very helpful to support my follow-up projects.**-->

# Sub-Project I: Residential Proxies as a Service
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

Below, we elaborate a little bit about the datasets and tools that are released to the public. 
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

**Source Code.** The source code can be accessed here: [https://github.com/mixianghang/RPaaS](https://github.com/mixianghang/RPaaS) , and it includes the following two components.
* The infiltration framework especially the infiltration clients and servers
* The IP fingerprinting tool

# Sub-Project II: Mobile Devices Serving as Residential Proxies
Between 2019 and 2021, we carried out a follow-up work dedicated to profiling the controversial recruitment of mobile devices into residential proxies, and you can learn more from our NDSS paper *Your Phone is My Proxy: Detecting and Understanding Mobile Proxy Networks*. And the relevant datasets can be found in [this github repository](https://github.com/OnionSecurity/mpaas).

```bibtex
@inproceedings{mi2021your,
  title={Your Phone is My Proxy: Detecting and Understanding Mobile Proxy Networks},
  author={Mi, Xianghang and Tang, Siyuan and Li, Zhengyi and Liao, Xiaojing, and Qian, Feng and Wang, Xiaofeng},
  booktitle={NDSS},
  year={2021}
}
```

# Sub-Project III: Residential Proxies in China
We then noticed that the ecosystem of RESIPs in China was missed in previous studies and has unique characteristics when compared with global counterparts. Our further moves the spotlight to the ecosystem of residential proxies in China, and has conducted a measurement study spanning 2021 and 2022. For more details, please refer to our paper titled as [*An Extensive Study of Residential Proxies in China*](https://arxiv.org/abs/2209.06056). 

**The datasets of residential proxies**. As detailed in the paper, we have captured more than 9 millions of residential proxies, among which, 4.6 millions are located in China. we provide [the full list of these residential proxies](https://drive.google.com/file/d/1lZFNvFb9D3a2cyYQp5DSFZdLYx3z_O5R/view?usp=sharing) as a 800MB json file stored in Google Drive. Each line of this json file is a json object representating a unique residential proxy IP along with multiple attributes as listed below.
* *ip* denotes the residential proxy IP address
* *groups* is an array representing the list of groups that the specific proxy belong to, and these groups include:
  - *BC*: backconnect residential proxy
  - *DA*: direct residential proxy captured from web APIs
  - *DP*: direct residentil proxy captured by querying passive DNS
 * *providers* is the list of proxy service that this residential proxy has been observed. Each element is in the format of {provider}_{group}. For instance, given an IP observed as a backconnect residential proxy of provider IPIDEA, *IPIDEA_BC* will be a member of its *provider* field.

The following snippet gives a typical example of aforementioned json structure.

```json
{
  "ip": "60.175.21.55",
  "groups": [
    "DA_IPs",
    "BC_IPs",
    "DP_IPs"
  ],
  "providers": [
    "IPIDEA_BC",
    "PinYiYun_DA",
    "XiaoXiang_DA",
    "JiGuang_BC",
    "XiaoXiang_BC",
    "PinYiYun_BC",
    "JiGuang_DA",
    "upaix.cn_DP"
  ]
}
```

**The dataset of residentil proxy websites (services)**. Our study has also discovered [399 resideltial proxy services](https://drive.google.com/file/d/1ZPavo7Tmyp5UyXYVbNiKzJunghDU8jKn/view?usp=sharing), leveraging a machine learning classifier.
You can download this dataset [here](https://drive.google.com/file/d/1ZPavo7Tmyp5UyXYVbNiKzJunghDU8jKn/view?usp=sharing), wherein each line is a residential proxy service website along with its default language.

Please cite this work on China RESIPs as below:
```bibtex
@inproceedings{yang2022extensive,
  title={An extensive study of residential proxies in China},
  author={Yang, Mingshuo and Yu, Yunnan and Mi, Xianghang and Tang, Shujun and Guo, Shanqing and Li, Yilin and Zheng, Xiaofeng and Duan, Haixin},
  booktitle={Proceedings of the 2022 ACM SIGSAC Conference on Computer and Communications Security},
  pages={3049--3062},
  year={2022}
}
```

# Sub-Project IV: Detecting and Understanding RESIP Traffic

Then, regarding the (malicious) usage of RESIPs (i.e., what traffic is relayed by RESIPs), current understanding turns out to be insufficient. Particularly, previous works on RESIP traffic studied only the maliciousness of web traffic destinations and the suspicious patterns of visiting popular websites. Also, a general methodology is missing regarding capturing large-scale RESIP traffic and analyzing RESIP traffic for security risks. Furthermore, considering many RESIP nodes are found to be located in corporate networks and are deployed without proper authorization from device owners or network administrators, it is becoming increasingly necessary to detect and block RESIP traffic flows, which unfortunately is impeded by the scarcity of realistic RESIP traffic datasets and effective detection methodologies.

To fill in these gaps, we conducted the fourth sub project along with multiple novel tools designed and implemented. These tools include a general framework to deploy RESIP nodes and collect RESIP traffic in a distributed manner, a RESIP traffic analyzer to efficiently process RESIP traffic logs and surface out suspicious traffic flows, and multiple machine learning based RESIP traffic classifiers to timely and accurately detect whether a given traffic flow is RESIP traffic or not.

To learn more details of this study, please refer to our paper titled as [Shining Light into the Tunnel: Understanding and Classifying Network Traffic of Residential Proxies](https://arxiv.org/abs/2404.10610).
We have also released the code/datasets in [this separate github repository](https://github.com/ChaseSecurity/bandwidth_sharing).


