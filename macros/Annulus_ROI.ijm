// Create ROIs for nuclear envelope and nucleoplasm from whole nuclear ROIs
// This script starts from already exisiting ROIs. Follow your preferred method to generate them.
// Thanks to CP for the help :)

nROI=roiManager("count");
for(i=0;i<=nROI-1; i++)
{roiManager("Select", i);
roiManager("Add");
RoiManager.scale(0.9, 0.9, true); //adjust parameters depending on the nuclear size
run("Fill", "slice");
}
for(i=0;i<=nROI-1; i++)
{roiManager("Select", newArray(i,nROI+i));
roiManager("XOR")
roiManager("Add");
}
for(i=nROI; i<2*nROI; i++)
{roiManager("Select", nROI);
roiManager("Delete");
}
