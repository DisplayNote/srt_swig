/*
 * SRT - Secure, Reliable, Transport
 * Copyright (c) 2018 Haivision Systems Inc.
 * 
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 */

/*****************************************************************************
written by
   Cinegy GmbH
 *****************************************************************************/

/*
Automatic generatation of bindings via SWIG (http://www.swig.org)
Install swig via the following (or use instructions from the link above):
   sudo apt install swig / nuget install swigwintools    
Generate the bindings using:
   mkdir srtcore/bindings/csharp -p
   swig -v -csharp -namespace SrtSharp -outdir ./srtcore/bindings/csharp/ ./srtcore/srt.i
You can now reference the SrtSharp lib in your .Net Core projects.  Ensure the srtlib.so (or srt.dll) is in the binary path of your .NetCore project.
*/
%include <arrays_csharp.i>

%module srt
%{
   #include "srt.h"
%}
   
%pragma(csharp) moduleimports=%{ 
using System;
using System.Runtime.InteropServices;

/// <summary>
/// sockaddr_in layout in C#.
/// </summary>
[StructLayout(LayoutKind.Sequential)]
public struct sockaddr_in
{
   public short sin_family;
   public ushort sin_port;
   public uint sin_addr;
   [MarshalAs(UnmanagedType.ByValArray, SizeConst = 8)]
   public byte[] sin_zero;
};
%}

//%typemap(imtype, out="global::System.IntPtr") SWIGTYPE "sockaddr"
%typemap(cstype) const struct sockaddr* "sockaddr_in"

%apply unsigned char INPUT[]  { char* buf }
%apply unsigned char OUTPUT[] { char* buf }

/*
typedef struct sockaddr {
    unsigned short sa_family;
    char sa_data[14];                   // Up to 14 bytes of direct address.
};
*/

static const SRTSOCKET SRT_INVALID_SOCK = -1;
static const int SRT_ERROR = -1;

int srt_startup(void);

SRTSOCKET srt_socket (int af, int type, int protocol);
 
int srt_connect (SRTSOCKET u, const struct sockaddr* name, int namelen);
int srt_recvmsg (SRTSOCKET u, char* buf, int len);