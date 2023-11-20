run("Set Measurements...", "area redirect=None decimal=3");
setThreshold("48", "65535", "black & white");
//run("Threshold...");
//setTool("wand");
waitForUser("Outline cell with wand or freehand tool")
run("Measure");
String.copyResults();
waitForUser("Record cell area");
Table.deleteRows(0, 1000);
setAutoThreshold("Otsu dark no-reset");
//run("Threshold...");
run("Analyze Particles...", "display clear");
String.copyResults();
waitForUser("Record particle count and area");
Table.deleteRows(0, 1000);