//=========================================================================//
//-------------------------------------------------------------------------//
// e24xx-1.h -- Header for for E24xx1 class                                //
// This file is part of PonyProg.                                          //
//-------------------------------------------------------------------------//
//                                                                         //
//  PonyProg - Serial Device Programmer                                    //
//                                                                         //
//  Copyright (C) 1997-2001   Claudio Lanconelli                           //
//                                                                         //
//  e-mail: lancos@libero.it                                               //
//  http://www.LancOS.com                                                  //
//                                                                         //
//-------------------------------------------------------------------------//
//                                                                         //
// This program is free software; you can redistribute it and/or           //
// modify it under the terms of the GNU  General Public License            //
// as published by the Free Software Foundation; either version2 of        //
// the License, or (at your option) any later version.                     //
//                                                                         //
// This program is distributed in the hope that it will be useful,         //
// but WITHOUT ANY WARRANTY; without even the implied warranty of          //
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU       //
// General Public License for more details.                                //
//                                                                         //
// You should have received a copy of the GNU  General Public License      //
// along with this program (see COPYING);     if not, write to the         //
// Free Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA. //
//                                                                         //
//-------------------------------------------------------------------------//
//=========================================================================//

#ifndef _E24XX1_H
#define _E24XX1_H

#include "e24xx.h"

#undef  BANK_SIZE
#define BANK_SIZE	1

class E24xx1 : public E24xx
{
  public:		//---------------------------------------- public

	E24xx1(e2AppWinInfo *wininfo = 0, BusIO *busp = 0);
	virtual ~E24xx1();

	int Probe(int probe_size = 0);
//	int Read(int probe = 1, int type = ALL_TYPE);
//	int Write(int probe = 1, int type = ALL_TYPE);
//	int Verify(int type = ALL_TYPE);

  protected:	//--------------------------------------- protected

  private:		//--------------------------------------- private

};

#endif