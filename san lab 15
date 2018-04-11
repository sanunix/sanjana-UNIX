implementation of file operation using a menu driven shell script in dialog

INPUT=/tmp/menu.sh.$$
OUTPUT=/tmp/output.sh.$$
vi_editor=${EDITOR-vi}
trap "rm $OUTPUT; rm $INPUT; exit" SIGHUP SIGINT SIGTERM
function display_output(){
	                local h=${1-10}            # box height default 10
			                local w=${2-41}            # box width default 41
					                local t=${3-Output}        # box title 
							dialog --backtitle "File operations" --title "${t}" --clear --msgbox "$(<$OUTPUT)" ${h} ${w}
							                                }
											copy1(){
												        cp $s1 $s2
													        display_output 6 60 "copy"
														        echo "Files succesfully copied" >$OUTPUT
														}
														move1(){
															        mv $s1 $s2
																        display_output 13 25 "move"
																	        echo "Files succesfully moved" >$OUTPUT
																	}
																	common1(){
																		        cmp $s1 $s2
																			        display_output 7 57 "common"
																				        echo "Files succesfully compared" >OUTPUT
																				}
																				difference1(){
																					        diff $s1 $s2
																						        display_output 6 60 "difference"
																							        echo "succesfully found the difference between the files" >$OUTPUT
																							}
																							remove1(){
																								        rm $s1
																									        display_output 13 25 "remove"
																										        echo "File succesfully removed" >OUTPUT
																										}
																										while true
																										do
																											dialog --clear  --help-button --backtitle "File operation" \
																												        --title "[ M A I N - M E N U ]" \
																													        --menu "You can use the UP/DOWN arrow keys, the first \n\
																														        letter of the choice as a hot key, or the \n\
																															        number keys 1-9 to choose an option.\n\
																																        Choose the TASK" 15 50 4 \
																																	        copy "copy file1 to file2" \
																																		        common "compare file1 with file2" \
																																			        difference "difference between file1 and file2" \
																																				        move "move file1 to file2" \
																																					        remove "remove file1" \
																																						        Exit "Exit to the shell" 2>"${INPUT}"
																											menuitem=$(<"${INPUT}")
																											        case $menuitem in
																													                copy) copy1;;
																															                common) common1;;
																																	                difference) difference1;;
																																			                move) move1;;
																																					                remove) remove1;;
																																							                Exit) echo "BYE";break;;
																																									        esac
																																									done
