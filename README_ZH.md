 <h1 align="center">InfluxDB分布式时序数据库</h1>
  <p align="center">
    <a href="README.md"><strong>English</strong></a> | <strong>简体中文</strong>
  </p>


## 目录

- [仓库简介](#项目介绍)
- [前置条件](#前置条件)
- [镜像说明](#镜像说明)
- [获取帮助](#获取帮助)
- [如何贡献](#如何贡献)

## 项目介绍

[InfluxDB](https://github.com/InfluxData/InfluxDB)  是一款由InfluxData开发的开源时序数据库，专为高效存储和实时分析时间序列数据设计。本商品基于鲲鹏服务器的Huawei Cloud EulerOS 2.0 64bit系统，提供开箱即用的InfluxDB。

## ‌核心特点

- **‌高性能时序处理‌：** 针对高频写入和快速查询场景优化，支持每秒处理数百万数据点，并采用TSM引擎提升存储效率。
- **‌纳秒级时间精度‌：** 支持高精度时间戳（纳秒级），确保数据按时间顺序准确存储和查询。‌
- **‌数据模型优化‌：** 通过标签（tags）和字段（fields）组织数据，支持灵活的实时分析功能（如连续查询和流式处理）。‌

本项目提供的开源镜像商品 [**InfluxDB分布式时序数据库**](https://marketplace.huaweicloud.com/contents/a9cfecb8-a2db-45d3-b41a-f405ad18b065#productid=OFFI1151328119301599232) 已预先安装2.7.1版本的InfluxDB及其相关运行环境，并提供部署模板。快来参照使用指南，轻松开启“开箱即用”的高效体验吧。


> **系统要求如下：**
> - CPU: 2vCPUs 或更高
> - RAM: 4GB 或更大
> - Disk: 至少 40GB

## 前置条件
[注册华为账号并开通华为云](https://support.huaweicloud.com/usermanual-account/account_id_001.html)

## 镜像说明

| 镜像规格                                                                                                      | 特性说明 | 备注 |
|-----------------------------------------------------------------------------------------------------------| --- | --- |
| [InfluxDB-2.7.1-kunpeng](https://github.com/HuaweiCloudDeveloper/influxDB-image/tree/InfluxDB-2.7.1-kunpeng) | 基于鲲鹏服务器 + Huawei Cloud EulerOS 2.0 64bit 安装部署 |  |

## 获取帮助
- 更多问题可通过 [issue](https://github.com/HuaweiCloudDeveloper/influxDB-image/issues) 或 华为云云商店指定商品的服务支持 与我们取得联系
- 其他开源镜像可看 [open-source-image-repos](https://github.com/HuaweiCloudDeveloper/open-source-image-repos)

## 如何贡献
- Fork 此存储库并提交合并请求
- 基于您的开源镜像信息同步更新 README.md
