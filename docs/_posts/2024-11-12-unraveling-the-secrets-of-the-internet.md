---
title: "Unraveling the Secrets of the Internet"
complexity: 3
date: 2024-11-12
categories: hardware
tags: [AI, Machine Learning, Blockchain, IoT (Internet of Things), 5G, Programming, Web Development, Mobile Apps, DevOps, Python, JavaScript, Product Reviews, Smartphones, Laptops, Wearables, Cybersecurity, Data Privacy, Tech Tips, How-To Guides, Augmented Reality, Virtual Reality, Quantum Computing, Tech Industry, Startups, Tech News, Cloud Computing, AWS, Azure, UX Design, Open Source,Software Development Lifecycle, Enterprise Software Solutions, Cloud Computing Platforms, Agile Methodologies, DevOps Practices, Open Source Technologies, Software Quality Assurance, Application Programming Interfaces (APIs), User Experience Design, Software Architecture Principles, Cybersecurity Measures, Software Development Tools, Version Control Systems, Continuous Integration and Deployment, Software Maintenance Strategies, Hardware Engineering, Computer Architecture, High-Performance Computing, Gaming Technology, Peripheral Device Innovations, Graphics Processing Units (GPUs), Central Processing Units (CPUs), Motherboard Technologies, Data Storage Solutions, Network Infrastructure, Internet of Things (IoT) Devices, Smart Technology Integration, Wearable Computing Devices, Embedded Systems, Python, Java, JavaScript, C#, C++, Ruby, Go, Swift, PHP, TypeScript]

excerpt: "The internet. It's a vast place that most everyone uses daily. To the untrained eye, it's a complete mystery. But what exactly makes the internet work? In today's blog, we'll be answering this question."
---

## Introduction

The internet. It's a vast place that most everyone uses daily. To the untrained eye, it's a complete mystery. But what exactly makes the internet work? In today's blog, we'll be answering this question.

## The Basics

Before we dive too deep into the internet, let us first hit a few important topics. If you are unfamiliar with networking, this section will help you understand the basics of how networks work. If you are already familiar with networking, feel free to skip this section.

### Essential Hardware

In a nutshell, a network is simply a collection of devices that are connected together. As an example, if you and your friend are in the same location and connect an ethernet cable to each of your computers, you technically have created a network.

![BasicNetwork.png](/assets/images/2024-11-12/BasicNetwork.png)

There are many other components which are used within a network to make it work. These include:

- **Routers**: These devices are used for routing data in and out of a network. The data is sent in, what we call, a packet. (More on this later)
- **Switches**: Switches are used to connect devices to a network as well as forward packets to the correct device. Switches can even assist with creating networks within networks by using a technology called VLANs (Virtual Local Area Networks).
- **Firewalls**: Firewalls are the security guards of a network. They allow or deny traffic based on the rules which have been defined by a network administrator. They are essential to ensuring that the network is secure.
- **Access Points (APs)**: Access points are pretty self explanatory. They are a point which allows a devices to access a network. This is most commonly seen in the form of a wireless access point (WAP) which allows devices to connect to a network wirelessly.
- **Modems**: Modems are used to connect a network to the internet. They are used to modulate and demodulate signals to and from the internet service provider (ISP).

> In most homes, your ISP will provide you with a modem/router combo. This device usually has all of the components mentioned above wrapped into one device. It's pretty handy for the average user. However, more advances users may need a more advanced setup depending on their needs.

These components are the basic building blocks of a network. As we explore more data center technologies, you will see that these components are few of the many that are used to create a network.

### Data Packets

Data packets are essentially, a conversation between devices. Think about it like this: You and your friend are having a conversation. When you say something, your friend responds and this process keeps happening until the conversation is complete. This concept is, at the very basic level, how data packets work. To understand how two devices would have this conversation, let's break it down into a few steps:

1. **Data Creation**: The data is created on the device which is sending the data. This could be anything from a simple text message to a video file.
2. **Data Packaging**: The data is then packaged into a data packet which contains information such as the source and destination of the data, the data itself, and other information which is used to ensure that the data is sent and received correctly.
3. **Data Transmission**: The data packet is then transmitted through the network (or networks) to the destination device.

As you can imagine, there is a lot more to this topic. But for the purpose of this blog, we will keep it here. If you would like to learn more about data packets, I would recommend looking into the [OSI model](https://en.wikipedia.org/wiki/OSI_model) as well as the a few of the, many, resources on packets, such as this [Cloudflare article](https://www.cloudflare.com/learning/network-layer/what-is-a-packet/).

### IP Addresses

IP Addresses are essentially the mailing addresses of a network. They help devices know where to send their data. There are two different versions of IP addresses which are used today:

- **IPv4**: This is the most common version of IP addresses which are used today. This version of IP addresses is a 32-bit address which is written in the format of `xxx.xxx.xxx.xxx` where `xxx` is a number between 0 and 255. Due to resource exhaustion, this version of IP addresses is being phased out in favor of IPv6.
- **IPv6**: This version of IP addresses is a 128-bit address which is written in the format of `xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx`. This version of IP addresses was created to solve the resource exhaustion problem which is seen in IPv4.

### Dynamic Host Configuration Protocol (DHCP)

Dynamic Host Configuration Protocol (DHCP) is a protocol which is used to assign [IP addresses](#static-vs-dynamic-ips) to devices on a network. This is essential for ensuring that devices can communicate with each other. DHCP servers are included in most routers that are in a home network. However, in advanced networks, you may see that the DHCP server is on a separate device to handle large amounts of devices or for more advanced configurations.

### Domain Name System (DNS)

The Domain Name System (DNS) is a system which translates a domain name (such as `ee.mitchs.dev`) to an IP address. Although DNS is not necessarily needed for devices to communicate with one another, it is essential for correlating an IP address to something that is more human readable. Just like DHCP servers, DNS servers are included in most routers that are in a home network but may be separated off in more advanced networks.

### Media Access Control (MAC) Addresses

MAC Addresses (sometimes called physical addresses) are unique identifiers for every device on a network. This address differs from an IP address as the MAC address is not assigned to a device on a network but is unique to the device itself. This address is the control mechanism for devices on a network as this is not determined by the network itself, but the device.

In some cases, the device can change it's MAC address. However, this practice may not be considered best depending on the circumstances. However, for privacy, this is a very common practice (when available) as this helps to prevent your device from being tracked on a network. In cases where security is a concern, however, this may not be recommended or may not even be allowed. This is a situation where you would need to weigh the cost of privacy over security. You may also see that some networks may block or allow a device based on its MAC address.

## Pulling the curtains back

To keep it simple, the internet is a network of networks. These networks can range from a simple computer connected to a router, all the way to a data center with thousands of servers with millions of virtual machines and several hardware and software based firewalls, load balancers, routers, switches, and other network devices. Where these devices are use highly depend on the demands and network demographic.

### Domain Registrars

Domain registrars are responsible for the registering and management of domain names. These are the companies which you can purchase a domain name from and manage the domain name. These companies ensure that domain names are unique and that your domain names are pointing to the correct IP addresses. Most domain registrars also offer additional services such as record management, email services, [CDN services](#content-delivery-networks-cdns), and more. 

### Internet Service Providers (ISPs)

Internet service providers (ISPs) are exactly what the title says, they provide internet, as a service, to their customers. The customer base which they cover can drastically range from a person out in a very remote area to a large corporation in a major city. The services they provide will also vary as the demands of their customers will vary. In most major cities in the United States these days, you can get internet speeds of 1GBpps (Gigabit per second) or more. However, in some rural areas, you may be lucky to get 10MBps (Megabit per second). This particular situation is due to the cost of infrastructure build outs and maintenance in these areas. Another feature which most business-class ISPs provide is the ability to have multiple [static or dynamic IPs](#static-vs-dynamic-ips). This feature can be essential depending on the business functions and services which are being provided. Here are a few scenarios where having multiple IPs are essential:

- **Reliability**: Having multiple IPs can provide a level of redundancy in case one of the IPs becomes unavailable. In some cases, if multiple ISPs are available, a business may diversify their IPs across multiple ISPs to ensure that they have a level of redundancy in case there is a complete loss of service from one of the ISPs.
- **Isolate Services**: In some cases, a business may have multiple services and want to split the traffic between the services.
- **Security**: In some cases, a business may want to have a separate IP for their security devices such as firewalls, intrusion detection systems, etc.
- **DMZ and non-DMZ**: In some cases, a business may want to have a separate IP for their DMZ (Demilitarized Zone) and non-DMZ devices. Most modern network devices have the ability to create a DMZ on the device itself. However, in some cases, a business may want to have their DMZ on a completely separate IP address from their non-DMZ devices.

There are many other reasons why a business may want to have multiple IPs. However, these are a few of the most common reasons.

### Data Centers

Data centers are the heart of the internet. These are places that are where the websites you visit, videos you watch, even the emails you send are stored. In some cases, they may be just one stop on a packets journey to its destination. Data centers usually have some additional components which are included in their network stack.

- **Load Balancers**: Load balancers are used to distribute traffic across multiple servers. This is essential for high traffic websites and applications. Load balancers can be hardware or software defined. You may also see load balancers on multiple levels of the network stack. For example: You may have a load balancer which distributes the initial traffic coming in to a network to multiple areas and then load balancers sitting in front of the servers to help distribute the traffic to the servers.
- **Packet Sniffers**: Packet sniffers are used to capture packets which are coming in and out of the network. These are useful for troubleshooting purposes and usually are not a permanently installed device on the network.
- **Intrusion Detection**: Intrusion detection systems are used to detect traffic which could be malicious. These devices can be hardware or software based and are essential for ensuring that the network is secure.

These are just a few of the many components which are included in a data center network stack. As you can imagine, the network stack for a data center can be quite complex. However, the complexity is essential for ensuring that the data center is secure, reliable, and scalable. In most cloud-based data centers, where components are virtualized, you will see that a lot of these components are tied into monitoring software where certain conditions control the scaling and configuration of the network stack.

There are many other components to a data center (which we will cover in future blogs) that make up the complete stack of a data center. Here is a broad categorization of the components which are included in a data center:

- **Storage**: Storage is essential for storing the data which is being used by the servers. This can range from a simple hard drive to a complex storage area network (SAN).
- **Compute**: Compute is a fancy industry term for servers. These servers are used to run the applications and services which are being provided by the data center.
- **Networking**: Networking is the backbone of the data center. This is what allows the data to flow in and out of the data center. (What we are talking about in this blog)

#### Content Delivery Networks (CDNs)

Content delivery networks (CDNs) are networks which are specifically designed to deliver content to users. In most cases, in edge locations that are further away from the primary data centers. These networks are very important to giving a high-quality and speedy experience for users. Most likely, the websites you visit daily are using a CDN. Even this blog uses a CDN to deliver the content to you! CDNs, in a nutshell, are a network of servers which cache content (images, videos, web pages, etc.) and then deliver this content to a user when it is requested. You will almost never notice a difference when a CDN is being used. However, if a website does not go through a CDN, you will notice that the speed of the response from the website will possibly be drastically slower. Many CDNs also have additional features such as DDoS protection, Web Application Firewalls, [edge computing](#edge-computing), and more.

## Putting it together

Now that we've covered that the internet is not just a mysterious place, but a real place that is, really, "just a bunch of computers." We can now put it all together. Here is a brief overview of how you are able to receive this blog post:

1. **Initiate the Request**: You enter the blog's URL in your web browser.
1. **Local Resolution**: Your computer queries the router for the corresponding IP address.
1. **ISP Involvement**: The router forwards the request to your Internet Service Provider (ISP) to resolve the domain name.
1. **Root DNS Query**: The ISP contacts the root DNS servers to locate the IP address.
1. **TLD Lookup**: The root servers direct the request to the Top Level Domain (TLD) servers (e.g., .com, .org).
1. **Authoritative DNS Response**: The TLD servers reach out to the authoritative DNS servers for the final IP address.
1. **Backtracking the Response**: The authoritative servers send the IP address back through the TLD and root servers to your ISP.
1. **Returning to the Router**: Your ISP relays the IP address back to your router.
1. **Final Delivery**: The router provides the IP address to your computer.
1. **Data Request**: Your computer sends a request to the blog's IP address.
1. **Data Transfer**: The data center processes the request and sends the blog content back to your computer.
1. **Content Display**: Your computer receives the data and renders the blog post.
1. **Read**: You read the blog post!

![SimpleBlogPostExample.png](/assets/images/2024-11-12/SimpleBlogPostExample.png)

And that's it! You've successfully received this blog post. The internet is a complex and vast place, but hopefully this helped with making it a little less mysterious!

## Conclusion

In conclusion, the internet is a complex network of interconnected devices and technologies that work together to facilitate communication and information exchange. From essential hardware like routers and switches to critical protocols such as DHCP and DNS, each component plays a vital role in creating the seamless experience we often take for granted.

Understanding these concepts not only demystifies the workings of the internet but also empowers me to navigate its complexities with greater confidence. As technology continues to advance, staying informed about these developments will be essential for both personal and professional growth.

I've included a [bonus section](#bonus-section) that explores emerging technologies and offers additional insights into securing the internet. If you're interested in learning more about these topics, I encourage you to check out the resources provided.

I hope this blog has provided valuable insights into the inner workings of the internet and its foundational technologies. Embracing these innovations will help me better appreciate the ever-evolving digital landscape.

## Bonus Section

### Emerging Technologies

The internet is always evolving and new technologies are always being developed. I will briefly cover a few of the emerging technologies which are being developed as of the time of this blog post.

#### Internet of Things (IoT)

Internet of Things is a very exciting technology that most might not be aware of it, technically, but have seen it in action. IoT is an interconnection of devices which, typically, are not connected to the internet. This is most commonly seen in the form of smart home devices such as thermostats, lights, security cameras, etc. However, IoT is constantly expanding its borders and is being used in a large majority of industries such as in the medical, industrial, automotive, and even in agricultural field. IoT is a very fun topic and is ever expanding.

#### 5G

5G is the next generation of mobile networks. This technology is being developed to provide faster speeds, lower latency, and more reliability than the current 4G networks. It is still fairly early in its life cycle, and may not be available in some remote regions. So far, my experience with 5G over 4G LTE hasn't been too drastic. However, I am curious to see how this technology will evolve over time.

> 5G, although similar in name to 5GHz, is not the same thing. 5G networks are the version of the network generation for mobile connectivity. 5GHz is the frequency which is used within Wi-Fi networks

#### Edge Computing

Edge computing has been something that has been around for awhile. However, it is now being used in more areas such as in IoT devices. Edge computing is the practice of processing data closer to the source of the data. This is essential for ensuring that the data is processed quickly and efficiently. This is most commonly seen in IoT devices where the data is processed on the device itself and then sent to the cloud for further processing. This practice can significantly reduce the amount of data which is sent to the cloud and can help reduce the amount of data which is stored in the cloud saving on costs, bandwidth, storage, and energy.

#### Web 3.0

Web 3.0 is the next generation of the internet. This is a decentralized version of the internet which is built on [blockchain](#blockchain) technology. This technology is still in its infancy and is being developed by many companies. This technology is being developed to provide a more secure, private, and decentralized version of the internet. Web 3.0 is a very exciting technology for those who are concerned about their privacy and security on the internet. This technology would mean that there is no central authority which controls the internet but you, the user, can have control over your data.

### Securing the Internet

Another important topic which should be covered in this blog post, is security. Operating securely on the internet is not just a good idea, it's essential. There are, what we call, "bad actors," everywhere. Some, will stop at nothing to get your information. Here are a few tips to help you stay secure on the internet:

#### Use a VPN 

A VPN (Virtual Private Network) is a service which allows you to connect to the internet through a secure connection. This is essential when you are using public Wi-Fi networks. This is because public Wi-Fi networks are not secure and can be easily intercepted by a bad actor. It can also help improve your privacy as your IP address is hidden from the websites you visit as well as reduces your visibility to your ISP. My personal recommendations are [Private Internet Access (PIA)](https://www.privateinternetaccess.com/pages/buy-a-vpn/1218buyavpn?invite=U2FsdGVkX1-iE-IrOsq1JuxyrK4ppqTNYWpuN3YoLyU%2CGj_KV5babSm0y1smOMM36mS99bE) and [ProtonVPN](https://protonvpn.com/).

> With ProtonVPN, you can utilize their free tier which is a great way to get started with a VPN. However, they also offer a suite of privacy-focused services such as ProtonMail, ProtonCalendar, ProtonDrive, and more. Here is my [referral link](https://pr.tn/ref/795WXAPBRFB0) if you would like to check them out.

##### Keep your software up to date

Software updates can be an annoying thing. (Trust me, I know!) However, they play an important role, not only in addressing bugs and adding new features, but also in introducing security patches. These patches are essential for ensuring that your software is secure.

#### Don't click on suspicious links

This is a very common way that bad actors can get your information. If you receive an email from someone you don't know, or even from someone you do know, and it looks suspicious, don't click on the link. If you are unsure, it is always better to simply not click on the link. Using resources like the [Cloudflare Radar URL Scanner](https://radar.cloudflare.com/scan) can help you determine if a link is safe or not.

#### Use a password manager

Password managers are excellent ways to make sure that your passwords are secure. Most password managers will also help you generate a password which is complex enough to avoid being easily guessed or cracked. They also help reduce the amount of times you have to click the _Forgot Password_ button. :smile:

My personal recommendation is [Proton Pass]() which is an excellent password manager which is included in the Proton suite of services. However, there are many other password managers out there such as [LastPass](https://www.lastpass.com/), [1Password](https://1password.com/), and [Bitwarden](https://bitwarden.com/).

> Once again, Proton Pass is included in the Proton suite of services. Here is my [referral link](https://pr.tn/ref/795WXAPBRFB0) if you would like to check them out.

#### Use a browser with built-in security features

Most modern browsers have built-in security features which can help protect you from malicious websites. These features can range from blocking ads to blocking malicious websites. These features are important in keeping you safe on the internet. My personal recommendation is to use [Brave](https://brave.com/). It is a privacy-focused browser which has a lot of built-in security features as well as other features such as a VPN, Wallet, an AI assistant (Leo) and more.

#### Use multi-factor authentication

Multi-factor authentication is a great way to ensure that your accounts are secure. This is because even if someone gets your password, they will still need another form of authentication to access your account. This can be in the form of a text message, email, or even a physical device. The most secure method here is to use a physical device or authenticator app. Emails and text messages can have the potential to be intercepted, but this can be a good second layer of security.

Most password managers have a built-in multi-factor authentication feature. However, I suggest using a separate multi-factor authentication app as this only enhances the security as this separates your passwords from your multi-factor authentication codes. My recommendation for a multi-factor authentication app is [2FAS](https://2fas.com/). It is an open-source, privacy-focused multi-factor authentication app which is available on most platforms. You can also use a keyboard shortcut to autofill the code which is very handy. If you are wanting to use a physical device, I recommend using a [YubiKey](https://www.yubico.com/). It's important to note that not all services support physical devices for multi-factor authentication, physical devices can be lost or stolen, and they may be more inconvenient to use. But the best decision is up to you.

### Terminology

This section contains some additional terminology which is used in the blog post but was not explained in the blog post.

### Static vs Dynamic IPs

Internet Protocol (IP) Addresses are essentially the mailing addresses of a network. They help devices know where to send their data. IP addresses are typically categorized into two categories:

- **Static**: These are IPs which do not change. They are usually used for servers, network devices, and other devices which need to be accessed from the internet.
- **Dynamic**: These are IPs which change. They are usually used for devices which do not need to be accessed from the internet. This is most commonly seen in home networks.

### Top Level Domain (TLD)

A TLD is the last part of a domain name. (`.com`, `.org`, `.net`, etc.) These are managed by the Internet Assigned Numbers Authority (IANA) and are delegated to domain registrars.

### Blockchain

Blockchain is a technology which is used to store data in a secure and decentralized way. This technology is most commonly seen in cryptocurrencies such as Bitcoin and Ethereum.
