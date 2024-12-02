---
title: "CI Tips: The Secret Sauce to Avoiding Code Meltdowns"
complexity: 3
date: 2024-11-26
categories: software
tags: [AI, Machine Learning, Blockchain, IoT (Internet of Things), 5G, Programming, Web Development, Mobile Apps, DevOps, Python, JavaScript, Product Reviews, Smartphones, Laptops, Wearables, Cybersecurity, Data Privacy, Tech Tips, How-To Guides, Augmented Reality, Virtual Reality, Quantum Computing, Tech Industry, Startups, Tech News, Cloud Computing, AWS, Azure, UX Design, Open Source,Software Development Lifecycle, Enterprise Software Solutions, Cloud Computing Platforms, Agile Methodologies, DevOps Practices, Open Source Technologies, Software Quality Assurance, Application Programming Interfaces (APIs), User Experience Design, Software Architecture Principles, Cybersecurity Measures, Software Development Tools, Version Control Systems, Continuous Integration and Deployment, Software Maintenance Strategies, Hardware Engineering, Computer Architecture, High-Performance Computing, Gaming Technology, Peripheral Device Innovations, Graphics Processing Units (GPUs), Central Processing Units (CPUs), Motherboard Technologies, Data Storage Solutions, Network Infrastructure, Internet of Things (IoT) Devices, Smart Technology Integration, Wearable Computing Devices, Embedded Systems, Python, Java, JavaScript, C#, C++, Ruby, Go, Swift, PHP, TypeScript]


excerpt: "Your Continuous Integration (CI) pipeline can be the thing that keeps you sleeping at night, or the thing that causes you to lose sleep at night. In this article, I hope to share some tips that will help you avoid the latter!"
---

Did you ever hear the story about the CI pipeline that got kicked out of the bar? It was because it kept throwing build failures!

Your Continuous Integration (CI) pipeline can be the thing that keeps you sleeping at night, or the thing that causes you to lose sleep at night. In this article, I hope to share some tips that will help you avoid the latter! I have worked in the CI/CD industry for several years and have seen my fair share of outstanding pipelines, and those that are just a bunch of "spaghetti" code. There is most definitely a fine line between the two, and I hope to help you navigate that line with ease. The format for this article will be my advice as well as a story to go along with it, and lessons learned from that story.

## Keep it simple

First and foremost, keep your CI pipeline simple. This is the most important tip I can give you. If your pipeline is too complex, it will be difficult to maintain and debug. Keep your pipeline as simple as possible, and only add complexity when absolutely necessary.

**Story**

In one case which I was helping out a client with a CI pipeline, they had a pipeline which was so complex it took my experience, and two other engineers to follow the rabbit trail. After about a week of going through their pipeline, shared libraries<sub>[[1]](#notes)</sub>, and build logs, we finally found that the issue was a simple issue in one of the shared libraries.

Though this client thought that having many shared libraries helped them build modular pipelines, it actually made their pipelines much harder to debug and maintain, which in turn caused them to lose time and money. Sometimes, we get a little crazy when it comes to library modularity, and we forget that sometimes it might just be best to keep things simple.

## CI is not CD

Continuous Integration (CI) is not Continuous Deployment. (CD) CI and CD are, most always, going to be coupled together. However, both CI and CD have tools which are meant to be used independently of each other. CI is meant to be used to build and test your code, while CD is meant to be used to deploy your code. It is important to keep these two concepts separate, as they serve different purposes. There are some tools, such as GitLab CI/CD, which have both CI/CD capabilities built into the same tool. However, CI and CD should always be thought of as separate concepts. 

There are many disadvantages you will give yourself by combining the two concepts. 

- It will make your pipeline more complex and harder to maintain.
- You will miss out on some of the benefits of a standalone CD tool, such as advanced deployment strategies and monitoring capabilities<sub>[[2]](#notes)</sub>.
- You won't have separation of the two concepts.
- You might not be able to use the best tool for the job.

Answer this question:

**Can you use a hammer to screw in a screw?**

Sure, but it won't be the prettiest thing in the world and you might strip the screw and/or damage the threading. It's always best to use the right tool for the job.

**Story**

I was working with a client who had a CI/CD pipeline in their CI tool. It _worked_ but they weren't very happy with how their deployments were very limited. They wanted to be able to do a blue/green deployment, and this was _technically_ possible in their CI tool. However, it was very complex to do and was bordering turning their, fairly nice, CI pipeline into a monstrosity. I suggested that they use a standalone CD tool, and they were able to get the blue/green deployment they wanted, and it was much easier to maintain.

Though, in this case, they could have used a shared library, it would have made their pipeline too complex and also, if the wheel already exists, why reinvent it? In some use cases, it might make sense to use a shared library. But this is highly dependent on your use case and your team's experience. In most all cases, it makes sense to use a standalone CD tool for CD operations.

## Reproducibility

The most important part of a CI pipeline is ensuring it is reproducible. Consistent builds are vital to ensuring that your code will build and test the same. It's okay if your tests fail because of a bug in your code, but it's not okay if your tests fail because of a bug in your pipeline. Your pipeline should be reliable, stable, and consistent.

**Story**

I was working with a client who had a pipeline that was failing intermittently. They couldn't figure out why it was failing, and it was causing them to lose time and money. After some time spent with them debugging, we had discovered that they were using a container image that was not a static tag. This meant that the container image could potentially change between builds. This was causing their builds to fail intermittently. We suggested that they use a static tag for their container image, and their builds were much more stable.

## Commit hash over versions in pipelines

Versioned build are great for human readability, but they can cause issues with reproducibility. When you are building your container images, binaries, etc, it is best to use the commit hash of the code that you are building. This will ensure that your builds are reproducible and consistent.

**Story**

There was a client who used versioned tags that saw that their container logs were showing information that was incorrect and they thought they were going crazy. It turns out, they weren't going crazy, they simply had pushed a version of their code that was different than the version that was in the container image. This caused their logs to show incorrect information. When we used the commit hash instead of the versioned tag, their logs were correct.

Though it's good for human readability and client-facing applications to have versioned tags, it's best to use the commit hash for your builds as this will ensure you have the most accurate and consistent builds.

## Comment your code

This is a no-brainer, but it's important to comment your code. This will help you and your team understand what is going on in your pipeline. It will also help you debug your pipeline when things go wrong. Every pipeline language might have it's own syntax but they will always have some way to comment your code.

**Story**

This story is more of a praise for a client who had a very well-documented pipeline. A client was facing an issue with their pipeline, and when we joined them on a troubleshooting call, we were able to very easily understand what they were trying to do and identified the issue very quickly. This was all because they had commented their code very well. It's a simple thing, but it can save you a lot of time and money.

## GitOps is your friend

GitOps is a framework to manage your infrastructure and applications using Git. This is a great way to manage your CI/CD pipelines. It allows you to version control your infrastructure and applications, and it allows you to easily roll back changes if something goes wrong. It also allows you to easily collaborate with your team on your pipelines.

**Story**

Just like in code changes, sometimes you might want to roll back a pipeline change. I was working with a client who had a pipeline that was failing after a change was made. They simply rolled back the change in their Git repository, and their pipeline was back to normal. This saved them a lot of time and money, and it was all because they were using GitOps.

## Do not hardcode secrets

Secrets should **always** be considered secret, even in your CI pipeline. Almost every CI tool has a method to manage secrets. When you hardcode secrets you are opening yourself up to a security risk. It's best to use your CI tool's secret management system to manage your secrets.

**Story**

I was working with a client who had hardcoded their AWS access key and secret key in their pipeline. Unfortunately it was exposed to us on a debug call and we had to inform them that we could see their AWS access key and secret key. The plus side of this was that we were provided with an opportunity to educate them on how to use their CI tool's secret management system.

Though it might seem harmless, or may even save you some time, it's never a good idea to hardcode your secrets in your pipeline.

## Use variables where possible

Variables can seriously help your pipeline for various reasons. For example, when you are building your container images, you can simply set a `imageCommitHashTag` variable which can be used for building, pushing, and pulling your image.

**Story**

I was working with a client who had statically defined their image tags in their pipeline. This caused them to have to change the tag in multiple places when they wanted to change the tag. We suggested that they use a variable for their image tag, and they were able to change the tag in one place and it was changed everywhere.

## Use the CI tool that works best for your requirements

There are a vast array of CI tools that are available and they are most definitely not built the same. It's important to research to find the best tool for your requirements. Here are some things to consider when choosing a CI tool:

- Do we need a UI, CLI, and/or API?
- Do we need it to be SaaS or on-prem?
- What are their integration capabilities?
- Can we use our own integrations? (If needed)
- What are their secret management capabilities?
- Does the complexity of their pipeline language match our requirements?

Of course, there might be more questions that you might have, but these are some of the most important questions to ask when choosing a CI tool.

It's also important to not try and fit a square peg into a round hole. If a CI tool doesn't meet your requirements, it might be time to look at a new CI tool. Again, not all CI tools are built the same and don't have the same capabilities. For example: A hammer works well when you are working with a delicate project which requires precision, but a nail gun works well when you are working on a project that requires speed and efficiency. You can use both tools in both scenarios, and both, on a high-level, perform the same task. But they are built for different use cases.

**Story**

A client that I was working with was using a CI tool that "worked" but didn't give them what they were looking for. They were using our CI offering, but mostly in a "proof of value" capacity. The tool which they were using was a bit more dated and overly complex for what they wanted. The tool we offered had a simplified pipeline language, and it was much easier to use. They switched to our tool and were much happier with the results.

If they had stuck with the tool they were using, they would have, potentially, lost time and money trying to make the tool work for them.

## Don't set it and forget it

Now, to be clear; This doesn't mean you will, or should, always be tweaking your pipeline. But it's important to review your pipeline every so often to ensure that it is still meeting your requirements. It's also important to review your pipeline when you are making changes to your codebase, as this might require changes to your pipeline.

**This also applies to your CI tool!** :slightly_smiling_face: 

You should always ensure that your CI tool is up to date, or at least on a supported version. This not only ensures vendor support compliance, but ensures that you are getting the latest features and (most importantly) bug fixes.

**Story**

There were many cases were clients pipelines would "suddenly" break resulting in build failure after failure. Come to find out, most of the time, they just needed to update their build dependencies or something a long those lines. In some cases, it was a pesky bug that was already fixed in a newer version of the CI tool.

It's important to stay up to date with your pipeline and CI tool as it can save you time and money in the long run.

## Webhook over polling

Polling is generally considered as a bad practice in CI when you have the option to use hooks. Polling can be resource-intensive and can cause your builds to be slower as well as cause your CI tool to run slower. Webhooks are a much better option as they are event-driven and are much more efficient. Outside of performance, polling can also result in missed events which can cause your builds to be out of sync with your codebase. In situations where polling is a requirement, it's best to set a reasonable polling interval to avoid performance issues.

**Story**

There was a client who was seeing their CI server slow down and builds were taking longer than usual. After some investigation, we found that they were using polling with a 1 minute interval on all their pipelines. This was causing their CI server to slow down and builds were taking longer than usual. We suggested that they switch to webhooks, and almost immediately they saw an improvement in their build times.

## Monitor your pipeline performance

Just like anything else, pipelines can also have performance bottlenecks. In environments where speed is of the essence, it's important to monitor your pipeline performance. This can help you identify bottlenecks and optimize your pipeline for speed. It can also help you identify issues before they become a problem.

**Story**

A client was seeing that their pipeline was taking hours to complete when previously it was taking minutes. After some investigation, we discovered that their repository had significantly grown in size and their pipeline was downloading the entire repository on every build. We suggested that they use a shallow clone, and their build times were back to normal.

If this client had kept an eye on their pipeline performance, they would have seen that the repository size was growing and could have taken action before it became a problem.

This leads me to my next point :slightly_smiling_face:

## Shallow clone your repository

When you are cloning your repository, it's best to use a shallow clone. This will only clone the latest commit, and not the entire repository. This can save you a lot of time and resources, especially if your repository is large. This has been a suggestion for a while now and has proven to significantly reduce build times.

> **Note:** There are some use cases that might not work with shallow clones, but when you have the option, use a shallow clone.

I will skip the story on this one as it was covered in the [previous point](#monitor-your-pipeline-performance).

## Use external services where possible

One of the great things about most CI tools, is that you can offload artifacts, secrets, and other things to external services. This can help you reduce the load on your CI server and can help you scale your CI server. It can also provides several other benefits such as faster build times, better security, check pointing, and more.

**Story**

There was a situation where a client was building a container image that didn't change much every time their code changed. This was a very costly operation and they didn't know how to optimize it. We had suggested two things:

1. Build the container image separately from the pipeline and push it to a container registry.
2. Use a cache to store the container image and pull it when needed.

Once they implemented this strategy, they saw a significant improvement in their build times as well as a reduction in costs.

## Keep some "cache" on hand

Caching your build dependencies and artifacts can significantly reduce your build times. This is especially true when you are building container images, as container images can be quite large. It's important to keep some "cache on hand" to ensure that your builds are as fast as possible.

> **Note:** In some cases, you can use an [external service](#use-external-services-where-possible) to cache your build dependencies and artifacts so that you don't have to keep them on the CI server.


**Story**

A client had a fairly large container image that varied slightly across builds. They were seeing that their builds were taking a long time to complete. We suggested that they use a cache to store the container image and pull it when needed. This significantly reduced their build times and saved them money.

## Conclusion

CI pipelines don't have to be a chore to deal with. They can be a powerful resource to help with your development process. Hopefully, these tips will help you avoid some of the pitfalls that I have seen in my time working with CI pipelines. If you have any questions, or need help with your CI pipeline, feel free to reach out to me. In summary, here are the tips that I have shared in this article:

1. Keep it simple
2. CI is not CD
3. Reproducibility
4. Commit hash over versions in pipelines
5. Comment your code
6. GitOps is your friend
7. Do not hardcode secrets
8. Use variables where possible
9. Use the CI tool that works best for your requirements
10. Don't set it and forget it
11. Webhook over polling
12. Monitor your pipeline performance
13. Shallow clone your repository
14. Use external services where possible
15. Keep some "cache" on hand

I encourage you to take these tips and apply them to your CI pipeline. Do you have any tips that you would like to share? Feel free to share them in the comments below!


## Notes

1. Shared libraries are a way to share reusable code across multiple pipelines. The most common CI tool which uses this is Jenkins, though there are other tools that have similar functionality.
2. Some CI/CD tools, like Gitlab CI/CD, have some of the capabilities of a standalone CD tool. However, they are not as robust as a standalone CD tool. But could work for your use case.
