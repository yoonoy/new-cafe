extends Node3D

var xr_interface: XRInterface

func _ready():

 xr_interface = XRServer.find_interface("OpenXR")

 if xr_interface:
  var success = xr_interface.initialize()

  if success:
   print("OpenXR initialised successfully")

   DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)

   get_viewport().use_xr = true
  else:
   print("Failed to initialise OpenXR")
 else:
  print("OpenXR interface not found")
 
