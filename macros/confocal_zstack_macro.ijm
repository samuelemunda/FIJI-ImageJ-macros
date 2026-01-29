// Macro for z-stack confocal images
// Select groups of code and press [Shift-Cmd-R] or "Run -> Run Selected Code"

// 1. open the image by drag-and-drop
// 2. uncheck all "split" options

// 3. Z Project to merge some planes together
//		set sart,stop and projection values (usually [Max Intensity] or [Average Intensity])
a=3
b=5
run("Z Project...", "start=a stop=b projection=[Max Intensity]");
run("Split Channels");

/* 4. Merge and add scalebar for size reference
 * Notes:	problem with channel names.
 * Useful to remember to keep "source images" (or place at the end of the macro)
 */
run("Merge Channels...", "c1=[name1] c2=[name2] c3=[name3] create keep");
run("Scale Bar...", "width=10 height=5 location=[Lower Left] horizontal bold overlay");
run("Flatten"); //or [Shift-Cmd-F]
saveAs("Tiff", "path"); //or [Cmd-S]
close;
// save for reference

// 5. Save each channel:
run("Flatten"); //or [Shift-Cmd-F]
saveAs("Tiff", "path"); //or [Cmd-S]
close; //or [Cmd-W]
close;
