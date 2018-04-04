Write a menu script to perform file operations like compare copy difference move and remove with the help of select statement and functions



copy1()
{
	   cp $s1 $s2
   }
   remove1()
   {
	      rm $s1
      }
      compare1()
      {
	         cmp $s1 $s2
	 }
	 difference1()
	 {
		    diff $s1 $s2
	    }
	    move1()
	    {
		       mv $s2 $s1
	       }
	       echo "Enter two files"
	       read s1 s2
	       echo "MENU FOR FILE OPERATIONS"
	       PS3='please select one of these'
	       files='copy Rename Remove Compare Difference exit'
	       select file in $files
	       do
		        if [ $file == copy ]
			then
				 Copy1                                
			 fi
			  if [ $file == Rename ]
			  then 
				  Rename1                             
			  fi
			  if [ $file == Remove]
			  then
				   Remove1                              
			   fi
			   if [ $file == Compare ]
			   then
				    Compare1                             
			    fi
			    if [ $file == Difference ]
			    then
				     Difference1                          
			     fi
			     if [ $file == Exit ]
			     then break
			     done
