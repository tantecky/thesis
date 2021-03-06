#!MC 1200
# Created by Tecplot 360 build 13.1.0.15185
$!VarSet |MFBD| = 'C:\Users\Jirka\Documents'

$!GLOBALTHREED SLICE{NORMAL{X = 0.70710678118654746}}
$!GLOBALTHREED SLICE{NORMAL{Z = 0.70710678118654757}}
$!CREATESLICEZONEFROMPLANE 
  SLICESOURCE = VOLUMEZONES
  FORCEEXTRACTIONTOSINGLEZONE = YES
  COPYCELLCENTEREDVALUES = NO
$!THREEDVIEW VIEWERPOSITION{X = -2.2204460492503131E-016}
$!THREEDVIEW VIEWERPOSITION{Y = 0.14500000000000002}
$!THREEDVIEW VIEWERPOSITION{Z = 2.9271486132208779}
$!THREEDVIEW PSIANGLE = 0
$!THREEDVIEW THETAANGLE = 0
$!ROTATE3DVIEW Y
  ANGLE = -45
  ROTATEORIGINLOCATION = DEFINEDORIGIN
$!ACTIVEFIELDMAPS = [5-7,11]
$!FIELDMAP [5-7]  SHADE{COLOR = RED}
$!FIELDMAP [11]  EDGELAYER{SHOW = NO}
$!FIELDLAYERS USETRANSLUCENCY = NO
$!GLOBALTHREED LIGHTSOURCE{INCLUDESPECULAR = NO}

$!FIELDMAP [5-7]  CONTOUR{SHOW = NO}
$!FIELDMAP [11]  SHADE{SHOW = NO}
$!GLOBALTHREEDVECTOR UVAR = 5
$!GLOBALTHREEDVECTOR VVAR = 6
$!GLOBALTHREEDVECTOR WVAR = 7
$!RESETVECTORLENGTH 
$!FIELDLAYERS SHOWVECTOR = YES

$!FIELDMAP [11]  SHADE{SHOW = NO}
$!GLOBALTHREEDVECTOR UVAR = 5
$!GLOBALTHREEDVECTOR VVAR = 6
$!GLOBALTHREEDVECTOR WVAR = 7
$!RESETVECTORLENGTH 
$!FIELDLAYERS SHOWVECTOR = YES

$!FIELDMAP [5-7]  VECTOR{SHOW = NO}

$!EXTENDEDCOMMAND 
  COMMANDPROCESSORID = 'CFDAnalyzer3'
  COMMAND = 'Calculate Function=\'VELOCITYMAG\''

$!INVERSEDISTINTERPOLATE 
  SOURCEZONES =  [1-2]
  DESTINATIONZONE = 11
  VARLIST =  [31]
  INVDISTEXPONENT = 3.5
  INVDISTMINRADIUS = 0
  INTERPPTSELECTION = OCTANTNPOINTS
  INTERPNPOINTS = 8

$!GLOBALCONTOUR 1  VAR = 31
$!CONTOURLEVELS RESETTONICE
  CONTOURGROUP = 1
  APPROXNUMVALUES = 15
  
$!CONTOURLEVELS NEW
  CONTOURGROUP = 1
  RAWDATA
11
0.1
0.2
0.3
0.4
0.5
0.6
0.7
0.8
0.9
1
1.1

$!FIELDMAP [11]  VECTOR{COLOR = MULTI}
$!FIELDMAP [11]  VECTOR{LINETHICKNESS = 0.20000000000000001}
$!FIELDMAP [11]  POINTS{IJKSKIP{I = 3}}
$!GLOBALTHREEDVECTOR USERELATIVE = NO
$!GLOBALTHREEDVECTOR UNIFORMLENGTH = 1.8

$!PICK SETMOUSEMODE
  MOUSEMODE = ADJUST
$!PICK ADDATPOSITION
  X = 8.70382165605
  Y = 1.37101910828
  CONSIDERSTYLE = YES
$!PICK CLEAR
$!GLOBALCONTOUR 1  LEGEND{SHOW = YES}
$!GLOBALCONTOUR 1  LEGEND{SHOWHEADER = NO}
$!GLOBALCONTOUR 1  LEGEND{XYPOS{X = 78}}
$!GLOBALCONTOUR 1  LEGEND{XYPOS{Y = 16}}
$!GLOBALCONTOUR 1  LEGEND{ISVERTICAL = NO}
$!GLOBALCONTOUR 1  LEGEND{BOX{BOXTYPE = NONE}}
#$!GLOBALCONTOUR 1  LEGEND{NUMBERTEXTSHAPE{FONT = HELVBOLD}}
$!GLOBALCONTOUR 1  LABELS{NUMFORMAT{FORMATTING = FIXEDFLOAT}}
$!GLOBALCONTOUR 1  LABELS{NUMFORMAT{PRECISION = 1}}
$!GLOBALCONTOUR 1  LABELS{NUMFORMAT{NEGATIVEPREFIX = ''}}
$!GLOBALCONTOUR 1  LABELS{NUMFORMAT{NEGATIVESUFFIX = ''}}
$!GLOBALCONTOUR 1  LABELS{NUMFORMAT{ZEROPREFIX = ''}}
$!GLOBALCONTOUR 1  LABELS{NUMFORMAT{ZEROSUFFIX = ''}}

$!EXPORTSETUP EXPORTFORMAT = PNG
$!EXPORTSETUP IMAGEWIDTH = 1210
$!EXPORTSETUP USESUPERSAMPLEANTIALIASING = YES
$!EXPORTSETUP SUPERSAMPLEFACTOR = 4
$!EXPORTSETUP EXPORTFNAME = 'C:\Tom\dp\Results\Velocity\picVel.png'
$!EXPORT 
  EXPORTREGION = CURRENTFRAME

$!RemoveVar |MFBD|
