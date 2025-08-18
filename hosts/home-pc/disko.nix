{
{
  disko.devices = {
    disk = {
      main = {
	device = "/dev/sda1";
	type = "disk";
	contenct = {
	  type = "gpt";
	  partitions = {
	    ESP = {
	      size = "2000M";
	      type = "EF00";
	      content = {
	        type = "filesystem";
		format = "vfat";
		mountpoint = "/boot";
		mountOptions = ["umask=0077"];
	      };
	    };
	    root = {
	      end = "-8GB";
	      content = {
	        type = "filesystem";
		format = "ext4";
		mountpoint = "/";
	      };  
            };
	   encryptedSwap = {
	     size = "10M";
	     content = {
	       type = "swap";
	       randomEncryption = true;
	       priority = 100;
	     };
	   };
	   plainSwap = {
	     size = "100%";
	     content = {
	       type = "swap";
	       discardPolicy = "both";
               resumeDevice = true;
	     };
	   };
	  };
	};
      };
    };
  };
}
