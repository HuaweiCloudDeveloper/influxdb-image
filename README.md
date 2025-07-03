<h1 align="center">InfluxDB Distributed Time Series Database</h1>
<p align="center">
    <strong>English</strong> | <a href="README_ZH.md"><strong>Chinese (Simplified)</strong></a>
</p>

## Table of Contents

- [Repository Introduction](#repository-introduction)
- [Prerequisites](#prerequisites)
- [Image Description](#image-description)
- [Get Help](#get-help)
- [How to Contribute](#how-to-contribute)

## Repository Introduction

[InfluxDB](https://github.com/InfluxData/InfluxDB) is an open-source time series database developed by InfluxData, designed for efficient storage and real-time analysis of time series data. This product provides a ready-to-use InfluxDB based on the Huawei Cloud EulerOS 2.0 64-bit system on Kunpeng servers.

## Core Features

- **High-performance Time Series Processing**: Optimized for high-frequency writes and fast queries, it supports processing millions of data points per second and uses the TSM engine to improve storage efficiency.
- **Nanosecond-level Time Precision**: Supports high-precision timestamps (nanosecond level) to ensure accurate storage and query of data in chronological order.
- **Optimized Data Model**: Organizes data through tags and fields, supporting flexible real-time analysis functions (such as continuous queries and stream processing).

The open-source image product [**InfluxDB Distributed Time Series Database**]() provided by this project has InfluxDB version 2.7.1 and its related runtime environment pre-installed, and also provides deployment templates. Refer to the usage guide and start your "ready-to-use" efficient experience now!

> **System requirements are as follows:**
> - CPU: 2 vCPUs or higher
> - RAM: 4GB or more
> - Disk: At least 40GB

## Prerequisites
[Register a Huawei account and activate Huawei Cloud](https://support.huaweicloud.com/usermanual-account/account_id_001.html)

## Image Description

| Image Specification                                                                                                      | Feature Description | Remarks |
|--------------------------------------------------------------------------------------------------------------------------| --- | --- |
| [InfluxDB-2.7.1-kunpeng](https://github.com/HuaweiCloudDeveloper/influxDB-image/tree/InfluxDB-2.7.1-kunpeng) | Installed and deployed based on Kunpeng servers + Huawei Cloud EulerOS 2.0 64-bit |  |

## Get Help
- For more questions, you can contact us through [issues](https://github.com/HuaweiCloudDeveloper/influxDB-image/issues) or the service support of the specified product on the Huawei Cloud Marketplace.
- For other open-source images, refer to [open-source-image-repos](https://github.com/HuaweiCloudDeveloper/open-source-image-repos).

## How to Contribute
- Fork this repository and submit a merge request.
- Update the README.md synchronously based on your open-source image information.