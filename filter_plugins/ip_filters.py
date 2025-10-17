#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import (absolute_import, division, print_function)
__metaclass__ = type

import ipaddress


def ip_in_range(ip, ip_range):
    import ipaddress
    ip_obj = ipaddress.ip_address(ip)
    if '-' in ip_range:
        start, end = ip_range.split('-')
        return ipaddress.ip_address(start) <= ip_obj <= ipaddress.ip_address(end)
    else:
        network = ipaddress.ip_network(ip_range, strict=False)
        return ip_obj in network

class FilterModule(object):
    def filters(self):
        return {
            'ip_in_range': ip_in_range
        }