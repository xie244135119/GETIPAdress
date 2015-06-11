//
//  XQIPAdress.h
//  Test获取本机IP地址
//
//  Created by SunSet on 15-6-11.
//  Copyright (c) 2015年 SunSet. All rights reserved.
//

#ifndef Test____IP___XQIPAdress_h
#define Test____IP___XQIPAdress_h

#define MAXADDRS    32

extern char *if_names[MAXADDRS];
extern char *ip_names[MAXADDRS];
extern char *hw_addrs[MAXADDRS];
extern unsigned long ip_addrs[MAXADDRS];
// Function prototypes
void InitAddresses();
void FreeAddresses();
void GetIPAddresses();
void GetHWAddresses();


#endif
