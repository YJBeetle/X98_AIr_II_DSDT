/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180105 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt5.dat, Mon Jul 30 16:01:44 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000585 (1413)
 *     Revision         0x01
 *     Checksum         0x8A
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Ist"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20061109 (537268489)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "Cpu0Ist", 0x00003000)
{
    External (_PR_.CPU0, DeviceObj)
    External (CFGD, UnknownObj)
    External (OSYS, UnknownObj)
    External (PDC0, UnknownObj)

    Scope (\_PR.CPU0)
    {
        Name (_PPC, Zero)  // _PPC: Performance Present Capabilities
        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            If (((CFGD & One) && (PDC0 & One)))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }

            Return (Package (0x02)
            {
                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x00,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000000, // Address
                        ,)
                }, 

                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x00,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000000, // Address
                        ,)
                }
            })
        }

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            If ((OSYS == 0x07DD))
            {
                Return (SPSS) /* \_PR_.CPU0.SPSS */
            }

            Return (NPSS) /* \_PR_.CPU0.NPSS */
        }

        Name (SPSS, Package (0x0C)
        {
            Package (0x06)
            {
                0x00000531, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001A4A, 
                0x00001A4A
            }, 

            Package (0x06)
            {
                0x00000530, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001030, 
                0x00001030
            }, 

            Package (0x06)
            {
                0x000004DD, 
                0x00000744, 
                0x0000000A, 
                0x0000000A, 
                0x00000F2F, 
                0x00000F2F
            }, 

            Package (0x06)
            {
                0x0000048A, 
                0x000006B8, 
                0x0000000A, 
                0x0000000A, 
                0x00000E2E, 
                0x00000E2E
            }, 

            Package (0x06)
            {
                0x00000437, 
                0x0000062C, 
                0x0000000A, 
                0x0000000A, 
                0x00000D2D, 
                0x00000D2D
            }, 

            Package (0x06)
            {
                0x000003E4, 
                0x000005A0, 
                0x0000000A, 
                0x0000000A, 
                0x00000C2C, 
                0x00000C2C
            }, 

            Package (0x06)
            {
                0x00000391, 
                0x00000514, 
                0x0000000A, 
                0x0000000A, 
                0x00000B2B, 
                0x00000B2B
            }, 

            Package (0x06)
            {
                0x0000033E, 
                0x00000488, 
                0x0000000A, 
                0x0000000A, 
                0x00000A2A, 
                0x00000A2A
            }, 

            Package (0x06)
            {
                0x000002EB, 
                0x000003FC, 
                0x0000000A, 
                0x0000000A, 
                0x00000929, 
                0x00000929
            }, 

            Package (0x06)
            {
                0x00000298, 
                0x00000370, 
                0x0000000A, 
                0x0000000A, 
                0x00000828, 
                0x00000828
            }, 

            Package (0x06)
            {
                0x00000245, 
                0x000002E4, 
                0x0000000A, 
                0x0000000A, 
                0x00000727, 
                0x00000727
            }, 

            Package (0x06)
            {
                0x000001F2, 
                0x00000258, 
                0x0000000A, 
                0x0000000A, 
                0x00000625, 
                0x00000625
            }
        })
        Name (NPSS, Package (0x15)
        {
            Package (0x06)
            {
                0x0000086E, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001A4A, 
                0x00001A4A
            }, 

            Package (0x06)
            {
                0x0000081B, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001948, 
                0x00001948
            }, 

            Package (0x06)
            {
                0x000007C8, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001845, 
                0x00001845
            }, 

            Package (0x06)
            {
                0x00000775, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001742, 
                0x00001742
            }, 

            Package (0x06)
            {
                0x00000722, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001640, 
                0x00001640
            }, 

            Package (0x06)
            {
                0x000006CF, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x0000153D, 
                0x0000153D
            }, 

            Package (0x06)
            {
                0x0000067C, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x0000143A, 
                0x0000143A
            }, 

            Package (0x06)
            {
                0x00000629, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001337, 
                0x00001337
            }, 

            Package (0x06)
            {
                0x000005D6, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001235, 
                0x00001235
            }, 

            Package (0x06)
            {
                0x00000583, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001133, 
                0x00001133
            }, 

            Package (0x06)
            {
                0x00000530, 
                0x000007D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001030, 
                0x00001030
            }, 

            Package (0x06)
            {
                0x000004DD, 
                0x00000744, 
                0x0000000A, 
                0x0000000A, 
                0x00000F2F, 
                0x00000F2F
            }, 

            Package (0x06)
            {
                0x0000048A, 
                0x000006B8, 
                0x0000000A, 
                0x0000000A, 
                0x00000E2E, 
                0x00000E2E
            }, 

            Package (0x06)
            {
                0x00000437, 
                0x0000062C, 
                0x0000000A, 
                0x0000000A, 
                0x00000D2D, 
                0x00000D2D
            }, 

            Package (0x06)
            {
                0x000003E4, 
                0x000005A0, 
                0x0000000A, 
                0x0000000A, 
                0x00000C2C, 
                0x00000C2C
            }, 

            Package (0x06)
            {
                0x00000391, 
                0x00000514, 
                0x0000000A, 
                0x0000000A, 
                0x00000B2B, 
                0x00000B2B
            }, 

            Package (0x06)
            {
                0x0000033E, 
                0x00000488, 
                0x0000000A, 
                0x0000000A, 
                0x00000A2A, 
                0x00000A2A
            }, 

            Package (0x06)
            {
                0x000002EB, 
                0x000003FC, 
                0x0000000A, 
                0x0000000A, 
                0x00000929, 
                0x00000929
            }, 

            Package (0x06)
            {
                0x00000298, 
                0x00000370, 
                0x0000000A, 
                0x0000000A, 
                0x00000828, 
                0x00000828
            }, 

            Package (0x06)
            {
                0x00000245, 
                0x000002E4, 
                0x0000000A, 
                0x0000000A, 
                0x00000727, 
                0x00000727
            }, 

            Package (0x06)
            {
                0x000001F2, 
                0x00000258, 
                0x0000000A, 
                0x0000000A, 
                0x00000625, 
                0x00000625
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((CFGD & 0x01000000))
            {
                If ((CFGD & 0x00800000))
                {
                    If ((PDC0 & 0x0800))
                    {
                        Return (Package (0x01)
                        {
                            Package (0x05)
                            {
                                0x05, 
                                Zero, 
                                Zero, 
                                0xFE, 
                                0x04
                            }
                        })
                    }

                    Return (Package (0x01)
                    {
                        Package (0x05)
                        {
                            0x05, 
                            Zero, 
                            Zero, 
                            0xFC, 
                            0x04
                        }
                    })
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        Package (0x05)
                        {
                            0x05, 
                            Zero, 
                            Zero, 
                            0xFE, 
                            0x02
                        }
                    })
                }
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    Zero, 
                    0xFC, 
                    One
                }
            })
        }
    }
}

