<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="mm" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="no" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="no" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="no"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-appsys">
<packages>
<package name="RJ45">
<description>&lt;b&gt;Modular Jack&lt;/b&gt;&lt;p&gt;PC Board Ground</description>
<wire x1="7.821" y1="-10.551" x2="-7.821" y2="-10.551" width="0.2032" layer="21"/>
<wire x1="-7.821" y1="-10.551" x2="-7.821" y2="-4.445" width="0.2032" layer="21"/>
<wire x1="-7.8232" y1="-4.445" x2="-7.8232" y2="-1.27" width="0.2032" layer="51"/>
<wire x1="-7.821" y1="-1.27" x2="-7.821" y2="10.043" width="0.2032" layer="21"/>
<wire x1="-7.821" y1="10.043" x2="-4.699" y2="10.043" width="0.2032" layer="21"/>
<wire x1="-4.191" y1="10.043" x2="-3.429" y2="10.043" width="0.2032" layer="21"/>
<wire x1="-3.429" y1="10.043" x2="-3.429" y2="7.747" width="0.2032" layer="51"/>
<wire x1="-2.921" y1="10.033" x2="-2.159" y2="10.033" width="0.2032" layer="21"/>
<wire x1="-1.651" y1="10.033" x2="-0.889" y2="10.033" width="0.2032" layer="21"/>
<wire x1="-0.381" y1="10.033" x2="0.381" y2="10.033" width="0.2032" layer="21"/>
<wire x1="0.889" y1="10.033" x2="1.651" y2="10.033" width="0.2032" layer="21"/>
<wire x1="2.159" y1="10.033" x2="2.921" y2="10.033" width="0.2032" layer="21"/>
<wire x1="3.429" y1="5.08" x2="3.429" y2="5.334" width="0.2032" layer="21"/>
<wire x1="3.429" y1="7.239" x2="3.429" y2="10.043" width="0.2032" layer="21"/>
<wire x1="3.429" y1="10.043" x2="4.191" y2="10.043" width="0.2032" layer="21"/>
<wire x1="4.699" y1="10.043" x2="7.821" y2="10.043" width="0.2032" layer="21"/>
<wire x1="7.821" y1="10.043" x2="7.821" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="7.821" y1="-4.445" x2="7.821" y2="-10.551" width="0.2032" layer="21"/>
<wire x1="7.869" y1="-5.331" x2="8.799" y2="-5.331" width="0.2032" layer="21"/>
<wire x1="8.799" y1="-5.331" x2="8.799" y2="-4.273" width="0.2032" layer="21"/>
<wire x1="8.799" y1="-4.273" x2="7.87" y2="-4.273" width="0.2032" layer="21"/>
<wire x1="-7.844" y1="-5.331" x2="-8.799" y2="-5.331" width="0.2032" layer="21"/>
<wire x1="-8.799" y1="-5.331" x2="-8.799" y2="-4.273" width="0.2032" layer="21"/>
<wire x1="-8.799" y1="-4.273" x2="-7.845" y2="-4.273" width="0.2032" layer="21"/>
<wire x1="3.429" y1="5.08" x2="2.921" y2="5.08" width="0.2032" layer="21"/>
<wire x1="2.921" y1="5.08" x2="2.921" y2="5.334" width="0.2032" layer="21"/>
<wire x1="2.921" y1="7.239" x2="2.921" y2="10.033" width="0.2032" layer="21"/>
<wire x1="2.159" y1="7.747" x2="1.651" y2="7.747" width="0.2032" layer="21"/>
<wire x1="-0.381" y1="7.747" x2="-0.889" y2="7.747" width="0.2032" layer="21"/>
<wire x1="-2.921" y1="10.033" x2="-2.921" y2="7.747" width="0.2032" layer="51"/>
<wire x1="-2.921" y1="7.747" x2="-3.429" y2="7.747" width="0.2032" layer="21"/>
<wire x1="-6.477" y1="10.033" x2="-6.477" y2="9.017" width="0.2032" layer="21"/>
<wire x1="-6.477" y1="9.017" x2="-5.588" y2="9.017" width="0.2032" layer="21"/>
<wire x1="-5.588" y1="9.017" x2="-5.588" y2="10.033" width="0.2032" layer="21"/>
<wire x1="6.477" y1="10.033" x2="6.477" y2="9.017" width="0.2032" layer="21"/>
<wire x1="6.477" y1="9.017" x2="5.588" y2="9.017" width="0.2032" layer="21"/>
<wire x1="5.588" y1="9.017" x2="5.588" y2="10.033" width="0.2032" layer="21"/>
<wire x1="3.429" y1="7.239" x2="3.429" y2="5.334" width="0.2032" layer="51"/>
<wire x1="2.921" y1="7.239" x2="2.921" y2="5.334" width="0.2032" layer="51"/>
<wire x1="2.159" y1="10.033" x2="2.159" y2="7.747" width="0.2032" layer="51"/>
<wire x1="1.651" y1="10.033" x2="1.651" y2="7.747" width="0.2032" layer="51"/>
<wire x1="-0.381" y1="10.033" x2="-0.381" y2="7.747" width="0.2032" layer="51"/>
<wire x1="-0.889" y1="10.033" x2="-0.889" y2="7.747" width="0.2032" layer="51"/>
<wire x1="0.889" y1="5.08" x2="0.889" y2="5.334" width="0.2032" layer="21"/>
<wire x1="0.889" y1="7.239" x2="0.889" y2="10.043" width="0.2032" layer="21"/>
<wire x1="0.889" y1="5.08" x2="0.381" y2="5.08" width="0.2032" layer="21"/>
<wire x1="0.381" y1="5.08" x2="0.381" y2="5.334" width="0.2032" layer="21"/>
<wire x1="0.381" y1="7.239" x2="0.381" y2="10.033" width="0.2032" layer="21"/>
<wire x1="0.889" y1="7.239" x2="0.889" y2="5.334" width="0.2032" layer="51"/>
<wire x1="0.381" y1="7.239" x2="0.381" y2="5.334" width="0.2032" layer="51"/>
<wire x1="-1.651" y1="5.08" x2="-1.651" y2="5.334" width="0.2032" layer="21"/>
<wire x1="-1.651" y1="7.239" x2="-1.651" y2="10.043" width="0.2032" layer="21"/>
<wire x1="-1.651" y1="5.08" x2="-2.159" y2="5.08" width="0.2032" layer="21"/>
<wire x1="-2.159" y1="5.08" x2="-2.159" y2="5.334" width="0.2032" layer="21"/>
<wire x1="-2.159" y1="7.239" x2="-2.159" y2="10.033" width="0.2032" layer="21"/>
<wire x1="-1.651" y1="7.239" x2="-1.651" y2="5.334" width="0.2032" layer="51"/>
<wire x1="-2.159" y1="7.239" x2="-2.159" y2="5.334" width="0.2032" layer="51"/>
<wire x1="-7.874" y1="-5.4356" x2="7.874" y2="-5.4356" width="0.0508" layer="21"/>
<wire x1="7.8232" y1="-4.4958" x2="7.8232" y2="-1.143" width="0.2032" layer="51"/>
<wire x1="4.191" y1="10.043" x2="4.191" y2="7.747" width="0.2032" layer="51"/>
<wire x1="4.699" y1="10.033" x2="4.699" y2="7.747" width="0.2032" layer="51"/>
<wire x1="4.699" y1="7.747" x2="4.191" y2="7.747" width="0.2032" layer="21"/>
<wire x1="-4.191" y1="5.08" x2="-4.191" y2="5.334" width="0.2032" layer="21"/>
<wire x1="-4.191" y1="7.239" x2="-4.191" y2="10.043" width="0.2032" layer="21"/>
<wire x1="-4.191" y1="5.08" x2="-4.699" y2="5.08" width="0.2032" layer="21"/>
<wire x1="-4.699" y1="5.08" x2="-4.699" y2="5.334" width="0.2032" layer="21"/>
<wire x1="-4.699" y1="7.239" x2="-4.699" y2="10.033" width="0.2032" layer="21"/>
<wire x1="-4.191" y1="7.239" x2="-4.191" y2="5.334" width="0.2032" layer="51"/>
<wire x1="-4.699" y1="7.239" x2="-4.699" y2="5.334" width="0.2032" layer="51"/>
<pad name="G1" x="-7.874" y="-3.048" drill="1.5748" diameter="2.1844"/>
<pad name="G2" x="7.874" y="-3.048" drill="1.5748" diameter="2.1844"/>
<pad name="6" x="1.905" y="8.89" drill="0.889"/>
<pad name="5" x="0.635" y="6.35" drill="0.889"/>
<pad name="4" x="-0.635" y="8.89" drill="0.889"/>
<pad name="3" x="-1.905" y="6.35" drill="0.889"/>
<pad name="2" x="-3.175" y="8.89" drill="0.889"/>
<pad name="1" x="-4.445" y="6.35" drill="0.889"/>
<pad name="7" x="3.175" y="6.35" drill="0.889"/>
<pad name="8" x="4.445" y="8.89" drill="0.889"/>
<pad name="G3" x="-7.874" y="3.302" drill="1.5748" diameter="2.1844"/>
<pad name="G4" x="8.001" y="3.302" drill="1.5748" diameter="2.1844"/>
<text x="-8.89" y="-0.127" size="1.778" layer="25" rot="R90">&gt;NAME</text>
<text x="10.16" y="-0.127" size="1.778" layer="27" rot="R90">&gt;VALUE</text>
<hole x="-5.715" y="0" drill="3.2512"/>
<hole x="5.715" y="0" drill="3.2512"/>
</package>
</packages>
<symbols>
<symbol name="JACK8">
<wire x1="1.524" y1="10.668" x2="0" y2="10.668" width="0.254" layer="94"/>
<wire x1="0" y1="10.668" x2="0" y2="9.652" width="0.254" layer="94"/>
<wire x1="0" y1="9.652" x2="1.524" y2="9.652" width="0.254" layer="94"/>
<wire x1="1.524" y1="8.128" x2="0" y2="8.128" width="0.254" layer="94"/>
<wire x1="0" y1="8.128" x2="0" y2="7.112" width="0.254" layer="94"/>
<wire x1="0" y1="7.112" x2="1.524" y2="7.112" width="0.254" layer="94"/>
<wire x1="1.524" y1="5.588" x2="0" y2="5.588" width="0.254" layer="94"/>
<wire x1="0" y1="5.588" x2="0" y2="4.572" width="0.254" layer="94"/>
<wire x1="0" y1="4.572" x2="1.524" y2="4.572" width="0.254" layer="94"/>
<wire x1="1.524" y1="3.048" x2="0" y2="3.048" width="0.254" layer="94"/>
<wire x1="0" y1="3.048" x2="0" y2="2.032" width="0.254" layer="94"/>
<wire x1="0" y1="2.032" x2="1.524" y2="2.032" width="0.254" layer="94"/>
<wire x1="1.524" y1="0.508" x2="0" y2="0.508" width="0.254" layer="94"/>
<wire x1="0" y1="0.508" x2="0" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0" y1="-0.508" x2="1.524" y2="-0.508" width="0.254" layer="94"/>
<wire x1="1.524" y1="-2.032" x2="0" y2="-2.032" width="0.254" layer="94"/>
<wire x1="0" y1="-2.032" x2="0" y2="-3.048" width="0.254" layer="94"/>
<wire x1="0" y1="-3.048" x2="1.524" y2="-3.048" width="0.254" layer="94"/>
<wire x1="1.524" y1="-4.572" x2="0" y2="-4.572" width="0.254" layer="94"/>
<wire x1="0" y1="-4.572" x2="0" y2="-5.588" width="0.254" layer="94"/>
<wire x1="0" y1="-5.588" x2="1.524" y2="-5.588" width="0.254" layer="94"/>
<wire x1="1.524" y1="-7.112" x2="0" y2="-7.112" width="0.254" layer="94"/>
<wire x1="0" y1="-7.112" x2="0" y2="-8.128" width="0.254" layer="94"/>
<wire x1="0" y1="-8.128" x2="1.524" y2="-8.128" width="0.254" layer="94"/>
<wire x1="-0.381" y1="-8.89" x2="0.254" y2="-8.89" width="0.127" layer="94"/>
<wire x1="0.762" y1="-8.89" x2="1.27" y2="-8.89" width="0.127" layer="94"/>
<wire x1="1.778" y1="-8.89" x2="2.286" y2="-8.89" width="0.127" layer="94"/>
<wire x1="2.794" y1="-8.89" x2="3.302" y2="-8.89" width="0.127" layer="94"/>
<wire x1="3.302" y1="-8.89" x2="3.302" y2="-8.382" width="0.127" layer="94"/>
<wire x1="3.302" y1="9.906" x2="3.302" y2="10.414" width="0.127" layer="94"/>
<wire x1="3.302" y1="10.922" x2="3.302" y2="11.43" width="0.127" layer="94"/>
<wire x1="3.302" y1="11.43" x2="2.794" y2="11.43" width="0.127" layer="94"/>
<wire x1="2.286" y1="11.43" x2="1.778" y2="11.43" width="0.127" layer="94"/>
<wire x1="1.27" y1="11.43" x2="0.762" y2="11.43" width="0.127" layer="94"/>
<wire x1="0.254" y1="11.43" x2="-0.381" y2="11.43" width="0.127" layer="94"/>
<wire x1="-0.381" y1="11.43" x2="-0.381" y2="10.668" width="0.127" layer="94"/>
<wire x1="-0.381" y1="9.652" x2="-0.381" y2="8.128" width="0.127" layer="94"/>
<wire x1="-0.381" y1="7.112" x2="-0.381" y2="5.588" width="0.127" layer="94"/>
<wire x1="-0.381" y1="4.572" x2="-0.381" y2="3.048" width="0.127" layer="94"/>
<wire x1="-0.381" y1="-0.508" x2="-0.381" y2="-2.032" width="0.127" layer="94"/>
<wire x1="-0.381" y1="-3.048" x2="-0.381" y2="-4.572" width="0.127" layer="94"/>
<wire x1="-0.381" y1="-5.588" x2="-0.381" y2="-7.112" width="0.127" layer="94"/>
<wire x1="-0.381" y1="-8.128" x2="-0.381" y2="-8.89" width="0.127" layer="94"/>
<wire x1="4.572" y1="4.064" x2="4.572" y2="3.048" width="0.1998" layer="94"/>
<wire x1="4.572" y1="3.048" x2="4.572" y2="2.54" width="0.1998" layer="94"/>
<wire x1="4.572" y1="2.54" x2="4.572" y2="2.032" width="0.1998" layer="94"/>
<wire x1="4.572" y1="2.032" x2="4.572" y2="1.524" width="0.1998" layer="94"/>
<wire x1="4.572" y1="1.524" x2="4.572" y2="1.016" width="0.1998" layer="94"/>
<wire x1="4.572" y1="1.016" x2="4.572" y2="0.508" width="0.1998" layer="94"/>
<wire x1="4.572" y1="0.508" x2="4.572" y2="0" width="0.1998" layer="94"/>
<wire x1="4.572" y1="0" x2="4.572" y2="-0.508" width="0.1998" layer="94"/>
<wire x1="4.572" y1="-0.508" x2="4.572" y2="-1.524" width="0.1998" layer="94"/>
<wire x1="4.572" y1="-1.524" x2="7.112" y2="-1.524" width="0.1998" layer="94"/>
<wire x1="7.112" y1="-1.524" x2="7.112" y2="-0.254" width="0.1998" layer="94"/>
<wire x1="7.112" y1="-0.254" x2="8.636" y2="-0.254" width="0.1998" layer="94"/>
<wire x1="8.636" y1="-0.254" x2="8.636" y2="2.794" width="0.1998" layer="94"/>
<wire x1="8.636" y1="2.794" x2="7.112" y2="2.794" width="0.1998" layer="94"/>
<wire x1="7.112" y1="2.794" x2="7.112" y2="4.064" width="0.1998" layer="94"/>
<wire x1="7.112" y1="4.064" x2="4.572" y2="4.064" width="0.1998" layer="94"/>
<wire x1="4.572" y1="3.048" x2="5.334" y2="3.048" width="0.1998" layer="94"/>
<wire x1="4.572" y1="2.54" x2="5.334" y2="2.54" width="0.1998" layer="94"/>
<wire x1="4.572" y1="2.032" x2="5.334" y2="2.032" width="0.1998" layer="94"/>
<wire x1="4.572" y1="1.524" x2="5.334" y2="1.524" width="0.1998" layer="94"/>
<wire x1="4.572" y1="1.016" x2="5.334" y2="1.016" width="0.1998" layer="94"/>
<wire x1="4.572" y1="0.508" x2="5.334" y2="0.508" width="0.1998" layer="94"/>
<wire x1="4.572" y1="0" x2="5.334" y2="0" width="0.1998" layer="94"/>
<wire x1="4.572" y1="-0.508" x2="5.334" y2="-0.508" width="0.1998" layer="94"/>
<wire x1="3.302" y1="8.636" x2="3.302" y2="9.144" width="0.127" layer="94"/>
<wire x1="3.302" y1="7.366" x2="3.302" y2="7.874" width="0.127" layer="94"/>
<wire x1="3.302" y1="6.096" x2="3.302" y2="6.604" width="0.127" layer="94"/>
<wire x1="3.302" y1="4.826" x2="3.302" y2="5.334" width="0.127" layer="94"/>
<wire x1="3.302" y1="3.556" x2="3.302" y2="4.064" width="0.127" layer="94"/>
<wire x1="3.302" y1="2.286" x2="3.302" y2="2.794" width="0.127" layer="94"/>
<wire x1="3.302" y1="1.016" x2="3.302" y2="1.524" width="0.127" layer="94"/>
<wire x1="3.302" y1="-0.254" x2="3.302" y2="0.254" width="0.127" layer="94"/>
<wire x1="3.302" y1="-2.794" x2="3.302" y2="-2.286" width="0.127" layer="94"/>
<wire x1="3.302" y1="-4.064" x2="3.302" y2="-3.556" width="0.127" layer="94"/>
<wire x1="3.302" y1="-5.334" x2="3.302" y2="-4.826" width="0.127" layer="94"/>
<wire x1="3.302" y1="-6.604" x2="3.302" y2="-6.096" width="0.127" layer="94"/>
<wire x1="3.302" y1="-7.874" x2="3.302" y2="-7.366" width="0.127" layer="94"/>
<text x="-2.54" y="12.7" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-11.43" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="10.16" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="3" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="4" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="5" x="-2.54" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="6" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="7" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="8" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="SINGLE_PIN_180">
<pin name="1" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RJ45" prefix="X" uservalue="yes">
<description>&lt;b&gt;AMP connector&lt;/b&gt;</description>
<gates>
<gate name="-" symbol="JACK8" x="-2.54" y="0" addlevel="always" swaplevel="1"/>
<gate name="SHIELD@1" symbol="SINGLE_PIN_180" x="-2.794" y="-8.89" addlevel="always" swaplevel="1"/>
<gate name="SHIELD@2" symbol="SINGLE_PIN_180" x="0.762" y="-8.89" addlevel="always" swaplevel="1"/>
<gate name="SHIELD@3" symbol="SINGLE_PIN_180" x="4.064" y="-8.89" addlevel="always" swaplevel="1"/>
<gate name="SHIELD@4" symbol="SINGLE_PIN_180" x="7.62" y="-8.89" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="RJ45">
<connects>
<connect gate="-" pin="1" pad="1"/>
<connect gate="-" pin="2" pad="2"/>
<connect gate="-" pin="3" pad="3"/>
<connect gate="-" pin="4" pad="4"/>
<connect gate="-" pin="5" pad="5"/>
<connect gate="-" pin="6" pad="6"/>
<connect gate="-" pin="7" pad="7"/>
<connect gate="-" pin="8" pad="8"/>
<connect gate="SHIELD@1" pin="1" pad="G1"/>
<connect gate="SHIELD@2" pin="1" pad="G2"/>
<connect gate="SHIELD@3" pin="1" pad="G3"/>
<connect gate="SHIELD@4" pin="1" pad="G4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead-1">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="2X20">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt; - 2.54</description>
<wire x1="-25.4" y1="-1.905" x2="-24.765" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-24.765" y1="-2.54" x2="-23.495" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-23.495" y1="-2.54" x2="-22.86" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-1.905" x2="-22.225" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-22.225" y1="-2.54" x2="-20.955" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="-2.54" x2="-20.32" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-1.905" x2="-19.685" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="-2.54" x2="-18.415" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="-2.54" x2="-17.78" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-1.905" x2="-17.145" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="-2.54" x2="-15.875" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="-2.54" x2="-15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-1.905" x2="-14.605" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="-2.54" x2="-13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-2.54" x2="-12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-1.905" x2="-12.065" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-2.54" x2="-10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-2.54" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-1.905" x2="-25.4" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="1.905" x2="-24.765" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-24.765" y1="2.54" x2="-23.495" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-23.495" y1="2.54" x2="-22.86" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="1.905" x2="-22.225" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-22.225" y1="2.54" x2="-20.955" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="2.54" x2="-20.32" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="1.905" x2="-19.685" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="2.54" x2="-18.415" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="2.54" x2="-17.78" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="1.905" x2="-17.145" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="2.54" x2="-15.875" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="2.54" x2="-15.24" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="1.905" x2="-14.605" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="2.54" x2="-13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="2.54" x2="-12.7" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.065" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="2.54" x2="-10.795" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="2.54" x2="-10.16" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.905" x2="-9.525" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="2.54" x2="-8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="2.54" x2="-7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="2.54" x2="-5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="1.905" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.905" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.905" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="2.54" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="2.54" x2="7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.905" x2="8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="9.525" y1="2.54" x2="8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="9.525" y1="2.54" x2="10.16" y2="1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="1.905" x2="10.795" y2="2.54" width="0.1524" layer="21"/>
<wire x1="12.065" y1="2.54" x2="10.795" y2="2.54" width="0.1524" layer="21"/>
<wire x1="12.065" y1="2.54" x2="12.7" y2="1.905" width="0.1524" layer="21"/>
<wire x1="12.7" y1="1.905" x2="13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="14.605" y1="2.54" x2="13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="14.605" y1="2.54" x2="15.24" y2="1.905" width="0.1524" layer="21"/>
<wire x1="15.24" y1="1.905" x2="15.875" y2="2.54" width="0.1524" layer="21"/>
<wire x1="17.145" y1="2.54" x2="15.875" y2="2.54" width="0.1524" layer="21"/>
<wire x1="17.145" y1="2.54" x2="17.78" y2="1.905" width="0.1524" layer="21"/>
<wire x1="17.78" y1="1.905" x2="18.415" y2="2.54" width="0.1524" layer="21"/>
<wire x1="19.685" y1="2.54" x2="18.415" y2="2.54" width="0.1524" layer="21"/>
<wire x1="19.685" y1="2.54" x2="20.32" y2="1.905" width="0.1524" layer="21"/>
<wire x1="20.32" y1="1.905" x2="20.955" y2="2.54" width="0.1524" layer="21"/>
<wire x1="22.225" y1="2.54" x2="20.955" y2="2.54" width="0.1524" layer="21"/>
<wire x1="22.225" y1="2.54" x2="22.86" y2="1.905" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-1.905" x2="22.225" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="22.225" y1="-2.54" x2="20.955" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-1.905" x2="20.955" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-1.905" x2="19.685" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="19.685" y1="-2.54" x2="18.415" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="18.415" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="17.145" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="17.145" y1="-2.54" x2="15.875" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-1.905" x2="15.875" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-1.905" x2="14.605" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-2.54" x2="14.605" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-2.54" x2="12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="12.065" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-2.54" x2="12.065" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-2.54" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-2.54" x2="8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-2.54" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.54" x2="-6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.54" x2="-9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="1.905" x2="-22.86" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="1.905" x2="-20.32" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="1.905" x2="-17.78" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="1.905" x2="-15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.905" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="1.905" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="12.7" y1="1.905" x2="12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="15.24" y1="1.905" x2="15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="17.78" y1="1.905" x2="17.78" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="20.32" y1="1.905" x2="20.32" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="22.86" y1="1.905" x2="22.86" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="22.86" y1="1.905" x2="23.495" y2="2.54" width="0.1524" layer="21"/>
<wire x1="24.765" y1="2.54" x2="23.495" y2="2.54" width="0.1524" layer="21"/>
<wire x1="24.765" y1="2.54" x2="25.4" y2="1.905" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-1.905" x2="24.765" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="24.765" y1="-2.54" x2="23.495" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-1.905" x2="23.495" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="25.4" y1="1.905" x2="25.4" y2="-1.905" width="0.1524" layer="21"/>
<pad name="1" x="-24.13" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-24.13" y="1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-21.59" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-21.59" y="1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="-19.05" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="-19.05" y="1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="-16.51" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="-16.51" y="1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="-13.97" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="-13.97" y="1.27" drill="1.016" shape="octagon"/>
<pad name="11" x="-11.43" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="12" x="-11.43" y="1.27" drill="1.016" shape="octagon"/>
<pad name="13" x="-8.89" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="14" x="-8.89" y="1.27" drill="1.016" shape="octagon"/>
<pad name="15" x="-6.35" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="16" x="-6.35" y="1.27" drill="1.016" shape="octagon"/>
<pad name="17" x="-3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="18" x="-3.81" y="1.27" drill="1.016" shape="octagon"/>
<pad name="19" x="-1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="20" x="-1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="21" x="1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="22" x="1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="23" x="3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="24" x="3.81" y="1.27" drill="1.016" shape="octagon"/>
<pad name="25" x="6.35" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="26" x="6.35" y="1.27" drill="1.016" shape="octagon"/>
<pad name="27" x="8.89" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="28" x="8.89" y="1.27" drill="1.016" shape="octagon"/>
<pad name="29" x="11.43" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="30" x="11.43" y="1.27" drill="1.016" shape="octagon"/>
<pad name="31" x="13.97" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="32" x="13.97" y="1.27" drill="1.016" shape="octagon"/>
<pad name="33" x="16.51" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="34" x="16.51" y="1.27" drill="1.016" shape="octagon"/>
<pad name="35" x="19.05" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="36" x="19.05" y="1.27" drill="1.016" shape="octagon"/>
<pad name="37" x="21.59" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="38" x="21.59" y="1.27" drill="1.016" shape="octagon"/>
<pad name="39" x="24.13" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="40" x="24.13" y="1.27" drill="1.016" shape="octagon"/>
<text x="-25.4" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-25.4" y="-4.445" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-24.384" y1="-1.524" x2="-23.876" y2="-1.016" layer="51"/>
<rectangle x1="-24.384" y1="1.016" x2="-23.876" y2="1.524" layer="51"/>
<rectangle x1="-21.844" y1="1.016" x2="-21.336" y2="1.524" layer="51"/>
<rectangle x1="-21.844" y1="-1.524" x2="-21.336" y2="-1.016" layer="51"/>
<rectangle x1="-19.304" y1="1.016" x2="-18.796" y2="1.524" layer="51"/>
<rectangle x1="-19.304" y1="-1.524" x2="-18.796" y2="-1.016" layer="51"/>
<rectangle x1="-16.764" y1="1.016" x2="-16.256" y2="1.524" layer="51"/>
<rectangle x1="-14.224" y1="1.016" x2="-13.716" y2="1.524" layer="51"/>
<rectangle x1="-11.684" y1="1.016" x2="-11.176" y2="1.524" layer="51"/>
<rectangle x1="-16.764" y1="-1.524" x2="-16.256" y2="-1.016" layer="51"/>
<rectangle x1="-14.224" y1="-1.524" x2="-13.716" y2="-1.016" layer="51"/>
<rectangle x1="-11.684" y1="-1.524" x2="-11.176" y2="-1.016" layer="51"/>
<rectangle x1="-9.144" y1="1.016" x2="-8.636" y2="1.524" layer="51"/>
<rectangle x1="-9.144" y1="-1.524" x2="-8.636" y2="-1.016" layer="51"/>
<rectangle x1="-6.604" y1="1.016" x2="-6.096" y2="1.524" layer="51"/>
<rectangle x1="-6.604" y1="-1.524" x2="-6.096" y2="-1.016" layer="51"/>
<rectangle x1="-4.064" y1="1.016" x2="-3.556" y2="1.524" layer="51"/>
<rectangle x1="-4.064" y1="-1.524" x2="-3.556" y2="-1.016" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.016" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="-1.524" x2="-1.016" y2="-1.016" layer="51"/>
<rectangle x1="1.016" y1="1.016" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="1.016" y1="-1.524" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="3.556" y1="1.016" x2="4.064" y2="1.524" layer="51"/>
<rectangle x1="3.556" y1="-1.524" x2="4.064" y2="-1.016" layer="51"/>
<rectangle x1="6.096" y1="1.016" x2="6.604" y2="1.524" layer="51"/>
<rectangle x1="6.096" y1="-1.524" x2="6.604" y2="-1.016" layer="51"/>
<rectangle x1="8.636" y1="1.016" x2="9.144" y2="1.524" layer="51"/>
<rectangle x1="8.636" y1="-1.524" x2="9.144" y2="-1.016" layer="51"/>
<rectangle x1="11.176" y1="1.016" x2="11.684" y2="1.524" layer="51"/>
<rectangle x1="11.176" y1="-1.524" x2="11.684" y2="-1.016" layer="51"/>
<rectangle x1="13.716" y1="1.016" x2="14.224" y2="1.524" layer="51"/>
<rectangle x1="13.716" y1="-1.524" x2="14.224" y2="-1.016" layer="51"/>
<rectangle x1="16.256" y1="1.016" x2="16.764" y2="1.524" layer="51"/>
<rectangle x1="16.256" y1="-1.524" x2="16.764" y2="-1.016" layer="51"/>
<rectangle x1="18.796" y1="1.016" x2="19.304" y2="1.524" layer="51"/>
<rectangle x1="18.796" y1="-1.524" x2="19.304" y2="-1.016" layer="51"/>
<rectangle x1="21.336" y1="1.016" x2="21.844" y2="1.524" layer="51"/>
<rectangle x1="21.336" y1="-1.524" x2="21.844" y2="-1.016" layer="51"/>
<rectangle x1="23.876" y1="1.016" x2="24.384" y2="1.524" layer="51"/>
<rectangle x1="23.876" y1="-1.524" x2="24.384" y2="-1.016" layer="51"/>
</package>
<package name="2X20/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt; - 2.54 90°</description>
<wire x1="-25.4" y1="-1.905" x2="-22.86" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-1.905" x2="-22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="0.635" x2="-25.4" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="0.635" x2="-25.4" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-24.13" y1="6.985" x2="-24.13" y2="1.27" width="0.762" layer="21"/>
<wire x1="-22.86" y1="-1.905" x2="-20.32" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-1.905" x2="-20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="0.635" x2="-22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="6.985" x2="-21.59" y2="1.27" width="0.762" layer="21"/>
<wire x1="-20.32" y1="-1.905" x2="-17.78" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-1.905" x2="-17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="0.635" x2="-20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="6.985" x2="-19.05" y2="1.27" width="0.762" layer="21"/>
<wire x1="-17.78" y1="-1.905" x2="-15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-1.905" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0.635" x2="-17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="6.985" x2="-16.51" y2="1.27" width="0.762" layer="21"/>
<wire x1="-15.24" y1="-1.905" x2="-12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-1.905" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="6.985" x2="-13.97" y2="1.27" width="0.762" layer="21"/>
<wire x1="-12.7" y1="-1.905" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="6.985" x2="-11.43" y2="1.27" width="0.762" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="6.985" x2="-8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="6.985" x2="6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="6.985" x2="8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="11.43" y1="6.985" x2="11.43" y2="1.27" width="0.762" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-1.905" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0.635" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="13.97" y1="6.985" x2="13.97" y2="1.27" width="0.762" layer="21"/>
<wire x1="15.24" y1="-1.905" x2="17.78" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0.635" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="16.51" y1="6.985" x2="16.51" y2="1.27" width="0.762" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="20.32" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-1.905" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="0.635" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="19.05" y1="6.985" x2="19.05" y2="1.27" width="0.762" layer="21"/>
<wire x1="20.32" y1="-1.905" x2="22.86" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-1.905" x2="22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="22.86" y1="0.635" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="21.59" y1="6.985" x2="21.59" y2="1.27" width="0.762" layer="21"/>
<wire x1="22.86" y1="-1.905" x2="25.4" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-1.905" x2="25.4" y2="0.635" width="0.1524" layer="21"/>
<wire x1="25.4" y1="0.635" x2="22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="24.13" y1="6.985" x2="24.13" y2="1.27" width="0.762" layer="21"/>
<pad name="2" x="-24.13" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="4" x="-21.59" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="6" x="-19.05" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="8" x="-16.51" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="10" x="-13.97" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="12" x="-11.43" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="14" x="-8.89" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="16" x="-6.35" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="18" x="-3.81" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="20" x="-1.27" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="22" x="1.27" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="24" x="3.81" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="26" x="6.35" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="28" x="8.89" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="30" x="11.43" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="32" x="13.97" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="34" x="16.51" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="36" x="19.05" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="38" x="21.59" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="1" x="-24.13" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="3" x="-21.59" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="5" x="-19.05" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="7" x="-16.51" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="9" x="-13.97" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="11" x="-11.43" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="13" x="-8.89" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="15" x="-6.35" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="17" x="-3.81" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="19" x="-1.27" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="21" x="1.27" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="23" x="3.81" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="25" x="6.35" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="27" x="8.89" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="29" x="11.43" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="31" x="13.97" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="33" x="16.51" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="35" x="19.05" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="37" x="21.59" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="40" x="24.13" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="39" x="24.13" y="-6.35" drill="1.016" shape="octagon"/>
<text x="-26.035" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="27.305" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-24.511" y1="0.635" x2="-23.749" y2="1.143" layer="21"/>
<rectangle x1="-21.971" y1="0.635" x2="-21.209" y2="1.143" layer="21"/>
<rectangle x1="-19.431" y1="0.635" x2="-18.669" y2="1.143" layer="21"/>
<rectangle x1="-16.891" y1="0.635" x2="-16.129" y2="1.143" layer="21"/>
<rectangle x1="-14.351" y1="0.635" x2="-13.589" y2="1.143" layer="21"/>
<rectangle x1="-11.811" y1="0.635" x2="-11.049" y2="1.143" layer="21"/>
<rectangle x1="-9.271" y1="0.635" x2="-8.509" y2="1.143" layer="21"/>
<rectangle x1="-6.731" y1="0.635" x2="-5.969" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="5.969" y1="0.635" x2="6.731" y2="1.143" layer="21"/>
<rectangle x1="8.509" y1="0.635" x2="9.271" y2="1.143" layer="21"/>
<rectangle x1="11.049" y1="0.635" x2="11.811" y2="1.143" layer="21"/>
<rectangle x1="13.589" y1="0.635" x2="14.351" y2="1.143" layer="21"/>
<rectangle x1="16.129" y1="0.635" x2="16.891" y2="1.143" layer="21"/>
<rectangle x1="18.669" y1="0.635" x2="19.431" y2="1.143" layer="21"/>
<rectangle x1="21.209" y1="0.635" x2="21.971" y2="1.143" layer="21"/>
<rectangle x1="23.749" y1="0.635" x2="24.511" y2="1.143" layer="21"/>
<rectangle x1="-24.511" y1="-2.921" x2="-23.749" y2="-1.905" layer="21"/>
<rectangle x1="-21.971" y1="-2.921" x2="-21.209" y2="-1.905" layer="21"/>
<rectangle x1="-24.511" y1="-5.461" x2="-23.749" y2="-4.699" layer="21"/>
<rectangle x1="-24.511" y1="-4.699" x2="-23.749" y2="-2.921" layer="51"/>
<rectangle x1="-21.971" y1="-4.699" x2="-21.209" y2="-2.921" layer="51"/>
<rectangle x1="-21.971" y1="-5.461" x2="-21.209" y2="-4.699" layer="21"/>
<rectangle x1="-19.431" y1="-2.921" x2="-18.669" y2="-1.905" layer="21"/>
<rectangle x1="-16.891" y1="-2.921" x2="-16.129" y2="-1.905" layer="21"/>
<rectangle x1="-19.431" y1="-5.461" x2="-18.669" y2="-4.699" layer="21"/>
<rectangle x1="-19.431" y1="-4.699" x2="-18.669" y2="-2.921" layer="51"/>
<rectangle x1="-16.891" y1="-4.699" x2="-16.129" y2="-2.921" layer="51"/>
<rectangle x1="-16.891" y1="-5.461" x2="-16.129" y2="-4.699" layer="21"/>
<rectangle x1="-14.351" y1="-2.921" x2="-13.589" y2="-1.905" layer="21"/>
<rectangle x1="-14.351" y1="-5.461" x2="-13.589" y2="-4.699" layer="21"/>
<rectangle x1="-14.351" y1="-4.699" x2="-13.589" y2="-2.921" layer="51"/>
<rectangle x1="-11.811" y1="-2.921" x2="-11.049" y2="-1.905" layer="21"/>
<rectangle x1="-9.271" y1="-2.921" x2="-8.509" y2="-1.905" layer="21"/>
<rectangle x1="-11.811" y1="-5.461" x2="-11.049" y2="-4.699" layer="21"/>
<rectangle x1="-11.811" y1="-4.699" x2="-11.049" y2="-2.921" layer="51"/>
<rectangle x1="-9.271" y1="-4.699" x2="-8.509" y2="-2.921" layer="51"/>
<rectangle x1="-9.271" y1="-5.461" x2="-8.509" y2="-4.699" layer="21"/>
<rectangle x1="-6.731" y1="-2.921" x2="-5.969" y2="-1.905" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-6.731" y1="-5.461" x2="-5.969" y2="-4.699" layer="21"/>
<rectangle x1="-6.731" y1="-4.699" x2="-5.969" y2="-2.921" layer="51"/>
<rectangle x1="-4.191" y1="-4.699" x2="-3.429" y2="-2.921" layer="51"/>
<rectangle x1="-4.191" y1="-5.461" x2="-3.429" y2="-4.699" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-5.461" x2="-0.889" y2="-4.699" layer="21"/>
<rectangle x1="-1.651" y1="-4.699" x2="-0.889" y2="-2.921" layer="51"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-5.461" x2="1.651" y2="-4.699" layer="21"/>
<rectangle x1="0.889" y1="-4.699" x2="1.651" y2="-2.921" layer="51"/>
<rectangle x1="3.429" y1="-4.699" x2="4.191" y2="-2.921" layer="51"/>
<rectangle x1="3.429" y1="-5.461" x2="4.191" y2="-4.699" layer="21"/>
<rectangle x1="5.969" y1="-2.921" x2="6.731" y2="-1.905" layer="21"/>
<rectangle x1="8.509" y1="-2.921" x2="9.271" y2="-1.905" layer="21"/>
<rectangle x1="5.969" y1="-5.461" x2="6.731" y2="-4.699" layer="21"/>
<rectangle x1="5.969" y1="-4.699" x2="6.731" y2="-2.921" layer="51"/>
<rectangle x1="8.509" y1="-4.699" x2="9.271" y2="-2.921" layer="51"/>
<rectangle x1="8.509" y1="-5.461" x2="9.271" y2="-4.699" layer="21"/>
<rectangle x1="11.049" y1="-2.921" x2="11.811" y2="-1.905" layer="21"/>
<rectangle x1="11.049" y1="-5.461" x2="11.811" y2="-4.699" layer="21"/>
<rectangle x1="11.049" y1="-4.699" x2="11.811" y2="-2.921" layer="51"/>
<rectangle x1="13.589" y1="-2.921" x2="14.351" y2="-1.905" layer="21"/>
<rectangle x1="16.129" y1="-2.921" x2="16.891" y2="-1.905" layer="21"/>
<rectangle x1="13.589" y1="-5.461" x2="14.351" y2="-4.699" layer="21"/>
<rectangle x1="13.589" y1="-4.699" x2="14.351" y2="-2.921" layer="51"/>
<rectangle x1="16.129" y1="-4.699" x2="16.891" y2="-2.921" layer="51"/>
<rectangle x1="16.129" y1="-5.461" x2="16.891" y2="-4.699" layer="21"/>
<rectangle x1="18.669" y1="-2.921" x2="19.431" y2="-1.905" layer="21"/>
<rectangle x1="21.209" y1="-2.921" x2="21.971" y2="-1.905" layer="21"/>
<rectangle x1="18.669" y1="-5.461" x2="19.431" y2="-4.699" layer="21"/>
<rectangle x1="18.669" y1="-4.699" x2="19.431" y2="-2.921" layer="51"/>
<rectangle x1="21.209" y1="-4.699" x2="21.971" y2="-2.921" layer="51"/>
<rectangle x1="21.209" y1="-5.461" x2="21.971" y2="-4.699" layer="21"/>
<rectangle x1="23.749" y1="-2.921" x2="24.511" y2="-1.905" layer="21"/>
<rectangle x1="23.749" y1="-5.461" x2="24.511" y2="-4.699" layer="21"/>
<rectangle x1="23.749" y1="-4.699" x2="24.511" y2="-2.921" layer="51"/>
</package>
<package name="2X20M">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt; - 2</description>
<wire x1="20.25" y1="2.25" x2="20.25" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="20.25" y1="-2.25" x2="-20.25" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-20.25" y1="-2.25" x2="-20.25" y2="2.25" width="0.2032" layer="21"/>
<wire x1="-20.25" y1="2.25" x2="20.25" y2="2.25" width="0.2032" layer="21"/>
<pad name="1" x="-19" y="-1" drill="0.9144" shape="square"/>
<pad name="2" x="-19" y="1" drill="0.9144"/>
<pad name="3" x="-17" y="-1" drill="0.9144"/>
<pad name="4" x="-17" y="1" drill="0.9144"/>
<pad name="5" x="-15" y="-1" drill="0.9144"/>
<pad name="6" x="-15" y="1" drill="0.9144"/>
<pad name="7" x="-13" y="-1" drill="0.9144"/>
<pad name="8" x="-13" y="1" drill="0.9144"/>
<pad name="9" x="-11" y="-1" drill="0.9144"/>
<pad name="10" x="-11" y="1" drill="0.9144"/>
<pad name="11" x="-9" y="-1" drill="0.9144"/>
<pad name="12" x="-9" y="1" drill="0.9144"/>
<pad name="13" x="-7" y="-1" drill="0.9144"/>
<pad name="14" x="-7" y="1" drill="0.9144"/>
<pad name="15" x="-5" y="-1" drill="0.9144"/>
<pad name="16" x="-5" y="1" drill="0.9144"/>
<pad name="17" x="-3" y="-1" drill="0.9144"/>
<pad name="18" x="-3" y="1" drill="0.9144"/>
<pad name="19" x="-1" y="-1" drill="0.9144"/>
<pad name="20" x="-1" y="1" drill="0.9144"/>
<pad name="21" x="1" y="-1" drill="0.9144"/>
<pad name="22" x="1" y="1" drill="0.9144"/>
<pad name="23" x="3" y="-1" drill="0.9144"/>
<pad name="24" x="3" y="1" drill="0.9144"/>
<pad name="25" x="5" y="-1" drill="0.9144"/>
<pad name="26" x="5" y="1" drill="0.9144"/>
<pad name="27" x="7" y="-1" drill="0.9144"/>
<pad name="28" x="7" y="1" drill="0.9144"/>
<pad name="29" x="9" y="-1" drill="0.9144"/>
<pad name="30" x="9" y="1" drill="0.9144"/>
<pad name="31" x="11" y="-1" drill="0.9144"/>
<pad name="32" x="11" y="1" drill="0.9144"/>
<pad name="33" x="13" y="-1" drill="0.9144"/>
<pad name="34" x="13" y="1" drill="0.9144"/>
<pad name="35" x="15" y="-1" drill="0.9144"/>
<pad name="36" x="15" y="1" drill="0.9144"/>
<pad name="37" x="17" y="-1" drill="0.9144"/>
<pad name="38" x="17" y="1" drill="0.9144"/>
<pad name="39" x="19" y="-1" drill="0.9144"/>
<pad name="40" x="19" y="1" drill="0.9144"/>
<text x="-21" y="-2" size="1.016" layer="25" ratio="14" rot="R90">&gt;NAME</text>
<text x="22" y="-2" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-19.25" y1="0.75" x2="-18.75" y2="1.25" layer="51"/>
<rectangle x1="-19.25" y1="-1.25" x2="-18.75" y2="-0.75" layer="51"/>
<rectangle x1="-17.25" y1="0.75" x2="-16.75" y2="1.25" layer="51"/>
<rectangle x1="-17.25" y1="-1.25" x2="-16.75" y2="-0.75" layer="51"/>
<rectangle x1="-15.25" y1="0.75" x2="-14.75" y2="1.25" layer="51"/>
<rectangle x1="-15.25" y1="-1.25" x2="-14.75" y2="-0.75" layer="51"/>
<rectangle x1="-13.25" y1="0.75" x2="-12.75" y2="1.25" layer="51"/>
<rectangle x1="-13.25" y1="-1.25" x2="-12.75" y2="-0.75" layer="51"/>
<rectangle x1="-11.25" y1="0.75" x2="-10.75" y2="1.25" layer="51"/>
<rectangle x1="-11.25" y1="-1.25" x2="-10.75" y2="-0.75" layer="51"/>
<rectangle x1="-9.25" y1="0.75" x2="-8.75" y2="1.25" layer="51"/>
<rectangle x1="-9.25" y1="-1.25" x2="-8.75" y2="-0.75" layer="51"/>
<rectangle x1="-7.25" y1="0.75" x2="-6.75" y2="1.25" layer="51"/>
<rectangle x1="-7.25" y1="-1.25" x2="-6.75" y2="-0.75" layer="51"/>
<rectangle x1="-5.25" y1="0.75" x2="-4.75" y2="1.25" layer="51"/>
<rectangle x1="-5.25" y1="-1.25" x2="-4.75" y2="-0.75" layer="51"/>
<rectangle x1="-3.25" y1="0.75" x2="-2.75" y2="1.25" layer="51"/>
<rectangle x1="-3.25" y1="-1.25" x2="-2.75" y2="-0.75" layer="51"/>
<rectangle x1="-1.25" y1="0.75" x2="-0.75" y2="1.25" layer="51"/>
<rectangle x1="-1.25" y1="-1.25" x2="-0.75" y2="-0.75" layer="51"/>
<rectangle x1="0.75" y1="0.75" x2="1.25" y2="1.25" layer="51"/>
<rectangle x1="0.75" y1="-1.25" x2="1.25" y2="-0.75" layer="51"/>
<rectangle x1="2.75" y1="0.75" x2="3.25" y2="1.25" layer="51"/>
<rectangle x1="2.75" y1="-1.25" x2="3.25" y2="-0.75" layer="51"/>
<rectangle x1="4.75" y1="0.75" x2="5.25" y2="1.25" layer="51"/>
<rectangle x1="4.75" y1="-1.25" x2="5.25" y2="-0.75" layer="51"/>
<rectangle x1="6.75" y1="0.75" x2="7.25" y2="1.25" layer="51"/>
<rectangle x1="6.75" y1="-1.25" x2="7.25" y2="-0.75" layer="51"/>
<rectangle x1="8.75" y1="0.75" x2="9.25" y2="1.25" layer="51"/>
<rectangle x1="8.75" y1="-1.25" x2="9.25" y2="-0.75" layer="51"/>
<rectangle x1="10.75" y1="0.75" x2="11.25" y2="1.25" layer="51"/>
<rectangle x1="10.75" y1="-1.25" x2="11.25" y2="-0.75" layer="51"/>
<rectangle x1="12.75" y1="0.75" x2="13.25" y2="1.25" layer="51"/>
<rectangle x1="12.75" y1="-1.25" x2="13.25" y2="-0.75" layer="51"/>
<rectangle x1="14.75" y1="0.75" x2="15.25" y2="1.25" layer="51"/>
<rectangle x1="14.75" y1="-1.25" x2="15.25" y2="-0.75" layer="51"/>
<rectangle x1="16.75" y1="0.75" x2="17.25" y2="1.25" layer="51"/>
<rectangle x1="16.75" y1="-1.25" x2="17.25" y2="-0.75" layer="51"/>
<rectangle x1="18.75" y1="0.75" x2="19.25" y2="1.25" layer="51"/>
<rectangle x1="18.75" y1="-1.25" x2="19.25" y2="-0.75" layer="51"/>
</package>
<package name="2X20SMD">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt; - 2.54 SMD</description>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="0" y1="-3.175" x2="-0.635" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-3.81" x2="-1.905" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-3.175" x2="-1.905" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-3.175" x2="1.905" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-3.81" x2="1.905" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-3.81" x2="0" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-3.175" x2="4.445" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-3.81" x2="2.54" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-3.81" x2="4.445" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-3.81" x2="6.985" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-3.175" x2="6.985" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-3.81" x2="5.08" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-3.81" x2="7.62" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="10.16" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-3.175" x2="9.525" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-3.81" x2="9.525" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="12.7" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-1.27" x2="12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-0.635" x2="12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="1.27" x2="10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="1.27" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-1.27" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-1.27" x2="12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-3.81" x2="12.065" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-3.175" x2="12.065" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-3.81" x2="10.16" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="14.605" y1="-1.27" x2="15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-0.635" x2="14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0.635" x2="15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="14.605" y1="1.27" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="14.605" y1="1.27" x2="13.335" y2="1.27" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="13.335" y2="1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-1.27" x2="12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-1.905" x2="15.24" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-1.27" x2="14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-3.81" x2="14.605" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-3.175" x2="14.605" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-3.81" x2="12.7" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="17.145" y1="-1.27" x2="17.78" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-0.635" x2="17.145" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0.635" x2="17.78" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="17.145" y1="1.27" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.145" y1="1.27" x2="15.875" y2="1.27" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0.635" x2="15.875" y2="1.27" width="0.1524" layer="21"/>
<wire x1="15.875" y1="-1.27" x2="15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="15.875" y1="-1.27" x2="17.145" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-1.905" x2="15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="17.78" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-3.175" x2="17.145" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="15.875" y1="-3.81" x2="17.145" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="15.875" y1="-3.81" x2="15.24" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="19.685" y1="-1.27" x2="20.32" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="18.415" y1="-1.27" x2="19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="19.685" y1="1.27" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="0.635" x2="20.32" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-0.635" x2="19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-1.905" x2="20.32" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-3.175" x2="19.685" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="18.415" y1="-3.81" x2="19.685" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="18.415" y1="-3.81" x2="17.78" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="18.415" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="18.415" y1="-1.27" x2="17.78" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="19.685" y1="1.27" x2="18.415" y2="1.27" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0.635" x2="18.415" y2="1.27" width="0.1524" layer="21"/>
<wire x1="22.86" y1="0.635" x2="22.86" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-1.905" x2="22.86" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="22.225" y1="-1.27" x2="22.86" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-0.635" x2="22.225" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="20.955" y1="-1.27" x2="22.225" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-1.905" x2="20.955" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="20.955" y1="-1.27" x2="20.32" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-3.175" x2="22.225" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="20.955" y1="-3.81" x2="22.225" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="20.955" y1="-3.81" x2="20.32" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="22.225" y1="1.27" x2="22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="22.225" y1="1.27" x2="20.955" y2="1.27" width="0.1524" layer="21"/>
<wire x1="20.32" y1="0.635" x2="20.955" y2="1.27" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-1.905" x2="25.4" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-3.175" x2="24.765" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="23.495" y1="-3.81" x2="24.765" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="23.495" y1="-3.81" x2="22.86" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="24.765" y1="-1.27" x2="25.4" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="23.495" y1="-1.27" x2="24.765" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-1.905" x2="23.495" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="25.4" y1="0.635" x2="25.4" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-0.635" x2="24.765" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="23.495" y1="1.27" x2="24.765" y2="1.27" width="0.1524" layer="21"/>
<wire x1="24.765" y1="1.27" x2="25.4" y2="0.635" width="0.1524" layer="21"/>
<wire x1="22.86" y1="0.635" x2="23.495" y2="1.27" width="0.1524" layer="21"/>
<wire x1="23.495" y1="-1.27" x2="22.86" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="27.94" y1="-1.905" x2="27.94" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="27.305" y1="-1.27" x2="27.94" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="27.94" y1="-3.175" x2="27.305" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="26.035" y1="-3.81" x2="27.305" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="26.035" y1="-3.81" x2="25.4" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="26.035" y1="-1.27" x2="27.305" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-1.905" x2="26.035" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="26.035" y1="-1.27" x2="25.4" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="27.94" y1="0.635" x2="27.94" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="27.94" y1="-0.635" x2="27.305" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="27.305" y1="1.27" x2="27.94" y2="0.635" width="0.1524" layer="21"/>
<wire x1="26.035" y1="1.27" x2="27.305" y2="1.27" width="0.1524" layer="21"/>
<wire x1="25.4" y1="0.635" x2="26.035" y2="1.27" width="0.1524" layer="21"/>
<wire x1="30.48" y1="-3.175" x2="29.845" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="29.845" y1="-1.27" x2="30.48" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="28.575" y1="-1.27" x2="29.845" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="27.94" y1="-1.905" x2="28.575" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="30.48" y1="-0.635" x2="29.845" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="29.845" y1="1.27" x2="30.48" y2="0.635" width="0.1524" layer="21"/>
<wire x1="27.94" y1="0.635" x2="28.575" y2="1.27" width="0.1524" layer="21"/>
<wire x1="28.575" y1="-1.27" x2="27.94" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="28.575" y1="1.27" x2="29.845" y2="1.27" width="0.1524" layer="21"/>
<wire x1="30.48" y1="0.635" x2="30.48" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="30.48" y1="-1.905" x2="30.48" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="28.575" y1="-3.81" x2="29.845" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="28.575" y1="-3.81" x2="27.94" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="33.02" y1="0.635" x2="33.02" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="32.385" y1="1.27" x2="33.02" y2="0.635" width="0.1524" layer="21"/>
<wire x1="31.115" y1="1.27" x2="32.385" y2="1.27" width="0.1524" layer="21"/>
<wire x1="30.48" y1="0.635" x2="31.115" y2="1.27" width="0.1524" layer="21"/>
<wire x1="33.02" y1="-0.635" x2="32.385" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="30.48" y1="-1.905" x2="31.115" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="31.115" y1="-1.27" x2="30.48" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="31.115" y1="-1.27" x2="32.385" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="31.115" y1="-3.81" x2="32.385" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="33.02" y1="-1.905" x2="33.02" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="32.385" y1="-1.27" x2="33.02" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="33.02" y1="-3.175" x2="32.385" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="31.115" y1="-3.81" x2="30.48" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="35.56" y1="0.635" x2="35.56" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="35.56" y1="-1.905" x2="35.56" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="34.925" y1="-1.27" x2="35.56" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="35.56" y1="-0.635" x2="34.925" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="34.925" y1="1.27" x2="35.56" y2="0.635" width="0.1524" layer="21"/>
<wire x1="33.655" y1="1.27" x2="34.925" y2="1.27" width="0.1524" layer="21"/>
<wire x1="33.02" y1="0.635" x2="33.655" y2="1.27" width="0.1524" layer="21"/>
<wire x1="33.655" y1="-1.27" x2="33.02" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="33.02" y1="-1.905" x2="33.655" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="33.655" y1="-3.81" x2="33.02" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="33.655" y1="-3.81" x2="34.925" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="35.56" y1="-3.175" x2="34.925" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="33.655" y1="-1.27" x2="34.925" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="36.195" y1="1.27" x2="37.465" y2="1.27" width="0.1524" layer="21"/>
<wire x1="35.56" y1="-1.905" x2="36.195" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="36.195" y1="-1.27" x2="35.56" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="37.465" y1="1.27" x2="38.1" y2="0.635" width="0.1524" layer="21"/>
<wire x1="36.195" y1="-1.27" x2="37.465" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="35.56" y1="0.635" x2="36.195" y2="1.27" width="0.1524" layer="21"/>
<wire x1="38.1" y1="0.635" x2="38.1" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="38.1" y1="-0.635" x2="37.465" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="37.465" y1="-1.27" x2="38.1" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="38.1" y1="-3.175" x2="37.465" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="36.195" y1="-3.81" x2="35.56" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="38.1" y1="-3.175" x2="38.1" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="36.195" y1="-3.81" x2="37.465" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="40.64" y1="0.635" x2="40.64" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="40.64" y1="-3.175" x2="40.64" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="40.64" y1="-0.635" x2="40.005" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="40.005" y1="-1.27" x2="40.64" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="38.735" y1="-1.27" x2="38.1" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="38.1" y1="-1.905" x2="38.735" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="38.735" y1="-1.27" x2="40.005" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="40.005" y1="1.27" x2="40.64" y2="0.635" width="0.1524" layer="21"/>
<wire x1="38.735" y1="1.27" x2="40.005" y2="1.27" width="0.1524" layer="21"/>
<wire x1="40.005" y1="-3.81" x2="38.735" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="40.64" y1="-3.175" x2="40.005" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="38.735" y1="-3.81" x2="38.1" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="38.1" y1="0.635" x2="38.735" y2="1.27" width="0.1524" layer="21"/>
<wire x1="43.18" y1="-0.635" x2="42.545" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="42.545" y1="-1.27" x2="43.18" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="41.275" y1="-1.27" x2="42.545" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="41.275" y1="-1.27" x2="40.64" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="40.64" y1="-1.905" x2="41.275" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="40.64" y1="0.635" x2="41.275" y2="1.27" width="0.1524" layer="21"/>
<wire x1="41.275" y1="1.27" x2="42.545" y2="1.27" width="0.1524" layer="21"/>
<wire x1="42.545" y1="1.27" x2="43.18" y2="0.635" width="0.1524" layer="21"/>
<wire x1="43.18" y1="0.635" x2="43.18" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="41.275" y1="-3.81" x2="40.64" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="42.545" y1="-3.81" x2="41.275" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="43.18" y1="-3.175" x2="42.545" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="43.18" y1="-3.175" x2="43.18" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="43.815" y1="-1.27" x2="43.18" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="43.18" y1="-1.905" x2="43.815" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="43.815" y1="-1.27" x2="45.085" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="45.72" y1="0.635" x2="45.72" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="45.72" y1="-3.175" x2="45.72" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="45.72" y1="-0.635" x2="45.085" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="45.085" y1="-1.27" x2="45.72" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="45.085" y1="1.27" x2="45.72" y2="0.635" width="0.1524" layer="21"/>
<wire x1="43.815" y1="1.27" x2="45.085" y2="1.27" width="0.1524" layer="21"/>
<wire x1="43.18" y1="0.635" x2="43.815" y2="1.27" width="0.1524" layer="21"/>
<wire x1="45.72" y1="-3.175" x2="45.085" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="45.085" y1="-3.81" x2="43.815" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="43.815" y1="-3.81" x2="43.18" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="48.26" y1="0.635" x2="48.26" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="48.26" y1="-3.175" x2="48.26" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="47.625" y1="-1.27" x2="48.26" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="48.26" y1="-0.635" x2="47.625" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="47.625" y1="1.27" x2="48.26" y2="0.635" width="0.1524" layer="21"/>
<wire x1="46.355" y1="1.27" x2="47.625" y2="1.27" width="0.1524" layer="21"/>
<wire x1="45.72" y1="0.635" x2="46.355" y2="1.27" width="0.1524" layer="21"/>
<wire x1="46.355" y1="-1.27" x2="45.72" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="45.72" y1="-1.905" x2="46.355" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="46.355" y1="-1.27" x2="47.625" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="46.355" y1="-3.81" x2="45.72" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="47.625" y1="-3.81" x2="46.355" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="48.26" y1="-3.175" x2="47.625" y2="-3.81" width="0.1524" layer="21"/>
<smd name="1" x="-1.27" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="2" x="-1.27" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R90"/>
<smd name="3" x="1.27" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="4" x="1.27" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="5" x="3.81" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="6" x="3.81" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="7" x="6.35" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="8" x="6.35" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="9" x="8.89" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="10" x="8.89" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="11" x="11.43" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="12" x="11.43" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="13" x="13.97" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="14" x="13.97" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="15" x="16.51" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="16" x="16.51" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="17" x="19.05" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="18" x="19.05" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="19" x="21.59" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="20" x="21.59" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="21" x="24.13" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="22" x="24.13" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="23" x="26.67" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="24" x="26.67" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="25" x="29.21" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="26" x="29.21" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="27" x="31.75" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="28" x="31.75" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="29" x="34.29" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="30" x="34.29" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="31" x="36.83" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="32" x="36.83" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="33" x="39.37" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="34" x="39.37" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="35" x="41.91" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="36" x="41.91" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="37" x="44.45" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="38" x="44.45" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="39" x="46.99" y="-3.81" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<smd name="40" x="46.99" y="1.27" dx="3.302" dy="1.016" layer="1" rot="R270"/>
<text x="-2.6162" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-5.715" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-2.794" x2="-1.016" y2="-2.286" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-2.794" x2="1.524" y2="-2.286" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-2.794" x2="4.064" y2="-2.286" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-2.794" x2="6.604" y2="-2.286" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-2.794" x2="9.144" y2="-2.286" layer="51"/>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
<rectangle x1="11.176" y1="-2.794" x2="11.684" y2="-2.286" layer="51"/>
<rectangle x1="13.716" y1="-0.254" x2="14.224" y2="0.254" layer="51"/>
<rectangle x1="13.716" y1="-2.794" x2="14.224" y2="-2.286" layer="51"/>
<rectangle x1="16.256" y1="-0.254" x2="16.764" y2="0.254" layer="51"/>
<rectangle x1="16.256" y1="-2.794" x2="16.764" y2="-2.286" layer="51"/>
<rectangle x1="18.796" y1="-0.254" x2="19.304" y2="0.254" layer="51"/>
<rectangle x1="18.796" y1="-2.794" x2="19.304" y2="-2.286" layer="51"/>
<rectangle x1="21.336" y1="-2.794" x2="21.844" y2="-2.286" layer="51"/>
<rectangle x1="21.336" y1="-0.254" x2="21.844" y2="0.254" layer="51"/>
<rectangle x1="23.876" y1="-2.794" x2="24.384" y2="-2.286" layer="51"/>
<rectangle x1="23.876" y1="-0.254" x2="24.384" y2="0.254" layer="51"/>
<rectangle x1="26.416" y1="-0.254" x2="26.924" y2="0.254" layer="51"/>
<rectangle x1="26.416" y1="-2.794" x2="26.924" y2="-2.286" layer="51"/>
<rectangle x1="28.956" y1="-2.794" x2="29.464" y2="-2.286" layer="51"/>
<rectangle x1="28.956" y1="-0.254" x2="29.464" y2="0.254" layer="51"/>
<rectangle x1="31.496" y1="-0.254" x2="32.004" y2="0.254" layer="51"/>
<rectangle x1="31.496" y1="-2.794" x2="32.004" y2="-2.286" layer="51"/>
<rectangle x1="34.036" y1="-0.254" x2="34.544" y2="0.254" layer="51"/>
<rectangle x1="34.036" y1="-2.794" x2="34.544" y2="-2.286" layer="51"/>
<rectangle x1="36.576" y1="-0.254" x2="37.084" y2="0.254" layer="51"/>
<rectangle x1="36.576" y1="-2.794" x2="37.084" y2="-2.286" layer="51"/>
<rectangle x1="39.116" y1="-0.254" x2="39.624" y2="0.254" layer="51"/>
<rectangle x1="39.116" y1="-2.794" x2="39.624" y2="-2.286" layer="51"/>
<rectangle x1="41.656" y1="-0.254" x2="42.164" y2="0.254" layer="51"/>
<rectangle x1="41.656" y1="-2.794" x2="42.164" y2="-2.286" layer="51"/>
<rectangle x1="44.196" y1="-0.254" x2="44.704" y2="0.254" layer="51"/>
<rectangle x1="44.196" y1="-2.794" x2="44.704" y2="-2.286" layer="51"/>
<rectangle x1="46.736" y1="-0.254" x2="47.244" y2="0.254" layer="51"/>
<rectangle x1="46.736" y1="-2.794" x2="47.244" y2="-2.286" layer="51"/>
</package>
<package name="2X20SMD/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt; - 2.54 90°</description>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="8.5725" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.27" y1="-2.54" x2="-1.27" y2="-8.89" width="0.4064" layer="21"/>
<wire x1="1.27" y1="8.5725" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="-8.89" width="0.4064" layer="21"/>
<wire x1="3.81" y1="8.5725" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-2.54" x2="3.81" y2="-8.89" width="0.4064" layer="21"/>
<wire x1="6.35" y1="8.5725" x2="6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="7.62" y1="0.635" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-2.54" x2="6.35" y2="-8.89" width="0.4064" layer="21"/>
<wire x1="8.89" y1="-2.54" x2="8.89" y2="-8.89" width="0.4064" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="8.5725" x2="8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="11.43" y1="8.5725" x2="11.43" y2="1.27" width="0.762" layer="21"/>
<wire x1="12.7" y1="0.635" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="11.43" y1="-2.54" x2="11.43" y2="-8.89" width="0.4064" layer="21"/>
<wire x1="13.97" y1="-2.54" x2="13.97" y2="-8.89" width="0.4064" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-1.905" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0.635" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="13.97" y1="8.5725" x2="13.97" y2="1.27" width="0.762" layer="21"/>
<wire x1="16.51" y1="-2.54" x2="16.51" y2="-8.89" width="0.4064" layer="21"/>
<wire x1="15.24" y1="-1.905" x2="17.78" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0.635" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="16.51" y1="8.5725" x2="16.51" y2="1.27" width="0.762" layer="21"/>
<wire x1="19.05" y1="8.5725" x2="19.05" y2="1.27" width="0.762" layer="21"/>
<wire x1="20.32" y1="-1.905" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="0.635" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="20.32" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="19.05" y1="-2.54" x2="19.05" y2="-8.89" width="0.4064" layer="21"/>
<wire x1="21.59" y1="8.5725" x2="21.59" y2="1.27" width="0.762" layer="21"/>
<wire x1="22.86" y1="0.635" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-1.905" x2="22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-1.905" x2="22.86" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="21.59" y1="-2.54" x2="21.59" y2="-8.89" width="0.4064" layer="21"/>
<wire x1="24.13" y1="8.5725" x2="24.13" y2="1.27" width="0.762" layer="21"/>
<wire x1="25.4" y1="0.635" x2="22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-1.905" x2="25.4" y2="0.635" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-1.905" x2="25.4" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="24.13" y1="-2.54" x2="24.13" y2="-8.89" width="0.4064" layer="21"/>
<wire x1="26.67" y1="8.5725" x2="26.67" y2="1.27" width="0.762" layer="21"/>
<wire x1="27.94" y1="0.635" x2="25.4" y2="0.635" width="0.1524" layer="21"/>
<wire x1="27.94" y1="-1.905" x2="27.94" y2="0.635" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-1.905" x2="27.94" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="26.67" y1="-2.54" x2="26.67" y2="-8.89" width="0.4064" layer="21"/>
<wire x1="29.21" y1="8.5725" x2="29.21" y2="1.27" width="0.762" layer="21"/>
<wire x1="30.48" y1="0.635" x2="27.94" y2="0.635" width="0.1524" layer="21"/>
<wire x1="30.48" y1="-1.905" x2="30.48" y2="0.635" width="0.1524" layer="21"/>
<wire x1="27.94" y1="-1.905" x2="30.48" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="29.21" y1="-2.54" x2="29.21" y2="-8.89" width="0.4064" layer="21"/>
<wire x1="31.75" y1="8.5725" x2="31.75" y2="1.27" width="0.762" layer="21"/>
<wire x1="33.02" y1="0.635" x2="30.48" y2="0.635" width="0.1524" layer="21"/>
<wire x1="33.02" y1="-1.905" x2="33.02" y2="0.635" width="0.1524" layer="21"/>
<wire x1="30.48" y1="-1.905" x2="33.02" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="31.75" y1="-2.54" x2="31.75" y2="-8.89" width="0.4064" layer="21"/>
<wire x1="34.29" y1="8.5725" x2="34.29" y2="1.27" width="0.762" layer="21"/>
<wire x1="35.56" y1="-1.905" x2="35.56" y2="0.635" width="0.1524" layer="21"/>
<wire x1="35.56" y1="0.635" x2="33.02" y2="0.635" width="0.1524" layer="21"/>
<wire x1="33.02" y1="-1.905" x2="35.56" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="34.29" y1="-2.54" x2="34.29" y2="-8.89" width="0.4064" layer="21"/>
<wire x1="36.83" y1="8.5725" x2="36.83" y2="1.27" width="0.762" layer="21"/>
<wire x1="38.1" y1="-1.905" x2="38.1" y2="0.635" width="0.1524" layer="21"/>
<wire x1="38.1" y1="0.635" x2="35.56" y2="0.635" width="0.1524" layer="21"/>
<wire x1="35.56" y1="-1.905" x2="38.1" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="36.83" y1="-2.54" x2="36.83" y2="-8.89" width="0.4064" layer="21"/>
<wire x1="39.37" y1="8.5725" x2="39.37" y2="1.27" width="0.762" layer="21"/>
<wire x1="40.64" y1="0.635" x2="38.1" y2="0.635" width="0.1524" layer="21"/>
<wire x1="40.64" y1="-1.905" x2="40.64" y2="0.635" width="0.1524" layer="21"/>
<wire x1="38.1" y1="-1.905" x2="40.64" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="39.37" y1="-2.54" x2="39.37" y2="-8.89" width="0.4064" layer="21"/>
<wire x1="41.91" y1="8.5725" x2="41.91" y2="1.27" width="0.762" layer="21"/>
<wire x1="43.18" y1="0.635" x2="40.64" y2="0.635" width="0.1524" layer="21"/>
<wire x1="43.18" y1="-1.905" x2="43.18" y2="0.635" width="0.1524" layer="21"/>
<wire x1="40.64" y1="-1.905" x2="43.18" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="41.91" y1="-2.54" x2="41.91" y2="-8.89" width="0.4064" layer="21"/>
<wire x1="44.45" y1="8.5725" x2="44.45" y2="1.27" width="0.762" layer="21"/>
<wire x1="45.72" y1="0.635" x2="43.18" y2="0.635" width="0.1524" layer="21"/>
<wire x1="45.72" y1="-1.905" x2="45.72" y2="0.635" width="0.1524" layer="21"/>
<wire x1="43.18" y1="-1.905" x2="45.72" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="44.45" y1="-2.54" x2="44.45" y2="-8.89" width="0.4064" layer="21"/>
<wire x1="46.99" y1="8.5725" x2="46.99" y2="1.27" width="0.762" layer="21"/>
<wire x1="48.26" y1="0.635" x2="45.72" y2="0.635" width="0.1524" layer="21"/>
<wire x1="48.26" y1="-1.905" x2="48.26" y2="0.635" width="0.1524" layer="21"/>
<wire x1="45.72" y1="-1.905" x2="48.26" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="46.99" y1="-2.54" x2="46.99" y2="-8.89" width="0.4064" layer="21"/>
<smd name="2" x="-1.27" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="1" x="-1.27" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="3" x="1.27" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="4" x="1.27" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="5" x="3.81" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="6" x="3.81" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="7" x="6.35" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="8" x="6.35" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="9" x="8.89" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="10" x="8.89" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="11" x="11.43" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="12" x="11.43" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="13" x="13.97" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="14" x="13.97" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="15" x="16.51" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="16" x="16.51" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="17" x="19.05" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="18" x="19.05" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="19" x="21.59" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="20" x="21.59" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="21" x="24.13" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="22" x="24.13" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="23" x="26.67" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="24" x="26.67" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="25" x="29.21" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="26" x="29.21" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="27" x="31.75" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="28" x="31.75" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="29" x="34.29" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="30" x="34.29" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="31" x="36.83" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="32" x="36.83" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="33" x="39.37" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="34" x="39.37" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="35" x="41.91" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="36" x="41.91" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="37" x="44.45" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="38" x="44.45" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="39" x="46.99" y="-8.89" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<smd name="40" x="46.99" y="-5.08" dx="1.778" dy="1.016" layer="1" rot="R90"/>
<text x="-3.175" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="50.165" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
<rectangle x1="5.969" y1="0.635" x2="6.731" y2="1.143" layer="21"/>
<rectangle x1="5.969" y1="-2.921" x2="6.731" y2="-1.905" layer="21"/>
<rectangle x1="8.509" y1="-2.921" x2="9.271" y2="-1.905" layer="21"/>
<rectangle x1="8.509" y1="0.635" x2="9.271" y2="1.143" layer="21"/>
<rectangle x1="11.049" y1="0.635" x2="11.811" y2="1.143" layer="21"/>
<rectangle x1="11.049" y1="-2.921" x2="11.811" y2="-1.905" layer="21"/>
<rectangle x1="13.589" y1="-2.921" x2="14.351" y2="-1.905" layer="21"/>
<rectangle x1="13.589" y1="0.635" x2="14.351" y2="1.143" layer="21"/>
<rectangle x1="16.129" y1="-2.921" x2="16.891" y2="-1.905" layer="21"/>
<rectangle x1="16.129" y1="0.635" x2="16.891" y2="1.143" layer="21"/>
<rectangle x1="18.669" y1="0.635" x2="19.431" y2="1.143" layer="21"/>
<rectangle x1="18.669" y1="-2.921" x2="19.431" y2="-1.905" layer="21"/>
<rectangle x1="21.209" y1="0.635" x2="21.971" y2="1.143" layer="21"/>
<rectangle x1="21.209" y1="-2.921" x2="21.971" y2="-1.905" layer="21"/>
<rectangle x1="23.749" y1="0.635" x2="24.511" y2="1.143" layer="21"/>
<rectangle x1="23.749" y1="-2.921" x2="24.511" y2="-1.905" layer="21"/>
<rectangle x1="26.289" y1="0.635" x2="27.051" y2="1.143" layer="21"/>
<rectangle x1="26.289" y1="-2.921" x2="27.051" y2="-1.905" layer="21"/>
<rectangle x1="28.829" y1="0.635" x2="29.591" y2="1.143" layer="21"/>
<rectangle x1="28.829" y1="-2.921" x2="29.591" y2="-1.905" layer="21"/>
<rectangle x1="31.369" y1="0.635" x2="32.131" y2="1.143" layer="21"/>
<rectangle x1="31.369" y1="-2.921" x2="32.131" y2="-1.905" layer="21"/>
<rectangle x1="33.909" y1="0.635" x2="34.671" y2="1.143" layer="21"/>
<rectangle x1="33.909" y1="-2.921" x2="34.671" y2="-1.905" layer="21"/>
<rectangle x1="36.449" y1="0.635" x2="37.211" y2="1.143" layer="21"/>
<rectangle x1="36.449" y1="-2.921" x2="37.211" y2="-1.905" layer="21"/>
<rectangle x1="38.989" y1="0.635" x2="39.751" y2="1.143" layer="21"/>
<rectangle x1="38.989" y1="-2.921" x2="39.751" y2="-1.905" layer="21"/>
<rectangle x1="41.529" y1="0.635" x2="42.291" y2="1.143" layer="21"/>
<rectangle x1="41.529" y1="-2.921" x2="42.291" y2="-1.905" layer="21"/>
<rectangle x1="44.069" y1="0.635" x2="44.831" y2="1.143" layer="21"/>
<rectangle x1="44.069" y1="-2.921" x2="44.831" y2="-1.905" layer="21"/>
<rectangle x1="46.609" y1="0.635" x2="47.371" y2="1.143" layer="21"/>
<rectangle x1="46.609" y1="-2.921" x2="47.371" y2="-1.905" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PINH2X20">
<wire x1="-6.35" y1="-27.94" x2="8.89" y2="-27.94" width="0.4064" layer="94"/>
<wire x1="8.89" y1="-27.94" x2="8.89" y2="25.4" width="0.4064" layer="94"/>
<wire x1="8.89" y1="25.4" x2="-6.35" y2="25.4" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="25.4" x2="-6.35" y2="-27.94" width="0.4064" layer="94"/>
<text x="-6.35" y="26.035" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-30.48" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="22.86" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="5.08" y="22.86" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="3" x="-2.54" y="20.32" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="5.08" y="20.32" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="5" x="-2.54" y="17.78" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="5.08" y="17.78" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="7" x="-2.54" y="15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="5.08" y="15.24" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="9" x="-2.54" y="12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="5.08" y="12.7" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="11" x="-2.54" y="10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="12" x="5.08" y="10.16" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="13" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="14" x="5.08" y="7.62" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="15" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="16" x="5.08" y="5.08" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="17" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="18" x="5.08" y="2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="19" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="20" x="5.08" y="0" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="21" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="22" x="5.08" y="-2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="23" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="24" x="5.08" y="-5.08" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="25" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="26" x="5.08" y="-7.62" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="27" x="-2.54" y="-10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="28" x="5.08" y="-10.16" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="29" x="-2.54" y="-12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="30" x="5.08" y="-12.7" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="31" x="-2.54" y="-15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="32" x="5.08" y="-15.24" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="33" x="-2.54" y="-17.78" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="34" x="5.08" y="-17.78" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="35" x="-2.54" y="-20.32" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="36" x="5.08" y="-20.32" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="37" x="-2.54" y="-22.86" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="38" x="5.08" y="-22.86" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="39" x="-2.54" y="-25.4" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="40" x="5.08" y="-25.4" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-2X20" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINH2X20" x="0" y="0"/>
</gates>
<devices>
<device name="_2.54" package="2X20">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="17" pad="17"/>
<connect gate="A" pin="18" pad="18"/>
<connect gate="A" pin="19" pad="19"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="20" pad="20"/>
<connect gate="A" pin="21" pad="21"/>
<connect gate="A" pin="22" pad="22"/>
<connect gate="A" pin="23" pad="23"/>
<connect gate="A" pin="24" pad="24"/>
<connect gate="A" pin="25" pad="25"/>
<connect gate="A" pin="26" pad="26"/>
<connect gate="A" pin="27" pad="27"/>
<connect gate="A" pin="28" pad="28"/>
<connect gate="A" pin="29" pad="29"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="30" pad="30"/>
<connect gate="A" pin="31" pad="31"/>
<connect gate="A" pin="32" pad="32"/>
<connect gate="A" pin="33" pad="33"/>
<connect gate="A" pin="34" pad="34"/>
<connect gate="A" pin="35" pad="35"/>
<connect gate="A" pin="36" pad="36"/>
<connect gate="A" pin="37" pad="37"/>
<connect gate="A" pin="38" pad="38"/>
<connect gate="A" pin="39" pad="39"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="40" pad="40"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_2.54-90°" package="2X20/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="17" pad="17"/>
<connect gate="A" pin="18" pad="18"/>
<connect gate="A" pin="19" pad="19"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="20" pad="20"/>
<connect gate="A" pin="21" pad="21"/>
<connect gate="A" pin="22" pad="22"/>
<connect gate="A" pin="23" pad="23"/>
<connect gate="A" pin="24" pad="24"/>
<connect gate="A" pin="25" pad="25"/>
<connect gate="A" pin="26" pad="26"/>
<connect gate="A" pin="27" pad="27"/>
<connect gate="A" pin="28" pad="28"/>
<connect gate="A" pin="29" pad="29"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="30" pad="30"/>
<connect gate="A" pin="31" pad="31"/>
<connect gate="A" pin="32" pad="32"/>
<connect gate="A" pin="33" pad="33"/>
<connect gate="A" pin="34" pad="34"/>
<connect gate="A" pin="35" pad="35"/>
<connect gate="A" pin="36" pad="36"/>
<connect gate="A" pin="37" pad="37"/>
<connect gate="A" pin="38" pad="38"/>
<connect gate="A" pin="39" pad="39"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="40" pad="40"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_2.00" package="2X20M">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="17" pad="17"/>
<connect gate="A" pin="18" pad="18"/>
<connect gate="A" pin="19" pad="19"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="20" pad="20"/>
<connect gate="A" pin="21" pad="21"/>
<connect gate="A" pin="22" pad="22"/>
<connect gate="A" pin="23" pad="23"/>
<connect gate="A" pin="24" pad="24"/>
<connect gate="A" pin="25" pad="25"/>
<connect gate="A" pin="26" pad="26"/>
<connect gate="A" pin="27" pad="27"/>
<connect gate="A" pin="28" pad="28"/>
<connect gate="A" pin="29" pad="29"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="30" pad="30"/>
<connect gate="A" pin="31" pad="31"/>
<connect gate="A" pin="32" pad="32"/>
<connect gate="A" pin="33" pad="33"/>
<connect gate="A" pin="34" pad="34"/>
<connect gate="A" pin="35" pad="35"/>
<connect gate="A" pin="36" pad="36"/>
<connect gate="A" pin="37" pad="37"/>
<connect gate="A" pin="38" pad="38"/>
<connect gate="A" pin="39" pad="39"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="40" pad="40"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_2.54-SMD" package="2X20SMD">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="17" pad="17"/>
<connect gate="A" pin="18" pad="18"/>
<connect gate="A" pin="19" pad="19"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="20" pad="20"/>
<connect gate="A" pin="21" pad="21"/>
<connect gate="A" pin="22" pad="22"/>
<connect gate="A" pin="23" pad="23"/>
<connect gate="A" pin="24" pad="24"/>
<connect gate="A" pin="25" pad="25"/>
<connect gate="A" pin="26" pad="26"/>
<connect gate="A" pin="27" pad="27"/>
<connect gate="A" pin="28" pad="28"/>
<connect gate="A" pin="29" pad="29"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="30" pad="30"/>
<connect gate="A" pin="31" pad="31"/>
<connect gate="A" pin="32" pad="32"/>
<connect gate="A" pin="33" pad="33"/>
<connect gate="A" pin="34" pad="34"/>
<connect gate="A" pin="35" pad="35"/>
<connect gate="A" pin="36" pad="36"/>
<connect gate="A" pin="37" pad="37"/>
<connect gate="A" pin="38" pad="38"/>
<connect gate="A" pin="39" pad="39"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="40" pad="40"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_2.54-SMD-90°" package="2X20SMD/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="17" pad="17"/>
<connect gate="A" pin="18" pad="18"/>
<connect gate="A" pin="19" pad="19"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="20" pad="20"/>
<connect gate="A" pin="21" pad="21"/>
<connect gate="A" pin="22" pad="22"/>
<connect gate="A" pin="23" pad="23"/>
<connect gate="A" pin="24" pad="24"/>
<connect gate="A" pin="25" pad="25"/>
<connect gate="A" pin="26" pad="26"/>
<connect gate="A" pin="27" pad="27"/>
<connect gate="A" pin="28" pad="28"/>
<connect gate="A" pin="29" pad="29"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="30" pad="30"/>
<connect gate="A" pin="31" pad="31"/>
<connect gate="A" pin="32" pad="32"/>
<connect gate="A" pin="33" pad="33"/>
<connect gate="A" pin="34" pad="34"/>
<connect gate="A" pin="35" pad="35"/>
<connect gate="A" pin="36" pad="36"/>
<connect gate="A" pin="37" pad="37"/>
<connect gate="A" pin="38" pad="38"/>
<connect gate="A" pin="39" pad="39"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="40" pad="40"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-wago_250">
<description>&lt;b&gt;WAGO Leiterplattenklemmen Serie 250 / WAGO PCB Terminal Blocks  Series 250
&lt;/b&gt;
&lt;br&gt;
&lt;br&gt;
&lt;UL&gt;
&lt;LI&gt;Kompakte Klemmenleiste mit Betätigungsdrückern
&lt;br&gt;Compact terminal strips with push-buttons
&lt;br&gt;
&lt;Li&gt;Eindrähtige Leiter direkt steckbar
&lt;br&gt;Push-in termination of solid and ferruled, fine-stranded conductors
&lt;br&gt;
&lt;LI&gt;Drückerbetätigung für das Anschließen von feindrähtigen Leitern und das Lösen von Leitern
&lt;br&gt;Termination / removal of fine-stranded conductors via push-buttons
&lt;br&gt;
&lt;LI&gt;45°-Leitereinführung für komfortable und platzsparende Verdrahtung
&lt;br&gt;45° conductor entry angle provides easy, space-saving wiring
&lt;br&gt;
&lt;LI&gt;Individuelle Farbkombination
&lt;br&gt;Costum color combinations
&lt;br&gt;

&lt;/UL&gt;</description>
<packages>
<package name="P-250-404">
<wire x1="2.0929" y1="3.5968" x2="2.1321" y2="3.5648" width="0.01" layer="51"/>
<wire x1="2.1321" y1="5.3608" x2="2.0929" y2="5.3288" width="0.01" layer="51"/>
<wire x1="2.0929" y1="3.4628" x2="2.4464" y2="3.4628" width="0.01" layer="51"/>
<wire x1="2.4464" y1="5.4628" x2="2.0929" y2="5.4628" width="0.01" layer="51"/>
<wire x1="2.0929" y1="-3.9032" x2="2.1321" y2="-3.9352" width="0.01" layer="51"/>
<wire x1="2.1321" y1="-2.1392" x2="2.0929" y2="-2.1712" width="0.01" layer="51"/>
<wire x1="2.0929" y1="-4.0372" x2="2.4464" y2="-4.0372" width="0.01" layer="51"/>
<wire x1="2.4464" y1="-2.0372" x2="2.0929" y2="-2.0372" width="0.01" layer="51"/>
<wire x1="2.0929" y1="-1.4032" x2="2.1321" y2="-1.4352" width="0.01" layer="51"/>
<wire x1="2.1321" y1="0.3608" x2="2.0929" y2="0.3288" width="0.01" layer="51"/>
<wire x1="2.0929" y1="-1.5372" x2="2.4464" y2="-1.5372" width="0.01" layer="51"/>
<wire x1="2.4464" y1="0.4628" x2="2.0929" y2="0.4628" width="0.01" layer="51"/>
<wire x1="2.0929" y1="1.0968" x2="2.1321" y2="1.0648" width="0.01" layer="51"/>
<wire x1="2.1321" y1="2.8608" x2="2.0929" y2="2.8288" width="0.01" layer="51"/>
<wire x1="2.0929" y1="0.9628" x2="2.4464" y2="0.9628" width="0.01" layer="51"/>
<wire x1="2.4464" y1="2.9628" x2="2.0929" y2="2.9628" width="0.01" layer="51"/>
<wire x1="-5.2826" y1="5.7128" x2="-5.2826" y2="-5.7872" width="0.01" layer="51"/>
<wire x1="-6" y1="5.7128" x2="-6" y2="-5.7872" width="0.2" layer="21"/>
<wire x1="-5.85" y1="5.7128" x2="-5.85" y2="-5.7872" width="0.01" layer="51"/>
<wire x1="-5.8" y1="5.7128" x2="-5.8" y2="4.2128" width="0.01" layer="51"/>
<wire x1="5.8" y1="5.7128" x2="5.8" y2="4.2128" width="0.01" layer="51"/>
<wire x1="-5.2" y1="5.7128" x2="-5.2" y2="4.2128" width="0.01" layer="51"/>
<wire x1="5.2" y1="4.2128" x2="6" y2="4.2128" width="0.01" layer="51"/>
<wire x1="-6" y1="4.2128" x2="-5.2" y2="4.2128" width="0.01" layer="51"/>
<wire x1="5.2" y1="5.7128" x2="5.2" y2="4.2128" width="0.01" layer="51"/>
<wire x1="6" y1="-1.7872" x2="5.8" y2="-1.7872" width="0.01" layer="51"/>
<wire x1="5.8" y1="-1.7872" x2="5.2" y2="-1.7872" width="0.01" layer="51"/>
<wire x1="-5.8" y1="-1.7872" x2="-5.8" y2="-3.2872" width="0.01" layer="51"/>
<wire x1="5.8" y1="-1.7872" x2="5.8" y2="-3.2872" width="0.01" layer="51"/>
<wire x1="-5.2" y1="-1.7872" x2="-5.2" y2="-3.2872" width="0.01" layer="51"/>
<wire x1="5.2" y1="-3.2872" x2="6" y2="-3.2872" width="0.01" layer="51"/>
<wire x1="-6" y1="-3.2872" x2="-5.2" y2="-3.2872" width="0.01" layer="51"/>
<wire x1="-5.2" y1="-1.7872" x2="-6" y2="-1.7872" width="0.01" layer="51"/>
<wire x1="5.2" y1="-1.7872" x2="5.2" y2="-3.2872" width="0.01" layer="51"/>
<wire x1="6" y1="0.7128" x2="5.8" y2="0.7128" width="0.01" layer="51"/>
<wire x1="5.8" y1="0.7128" x2="5.2" y2="0.7128" width="0.01" layer="51"/>
<wire x1="-5.8" y1="0.7128" x2="-5.8" y2="-0.7872" width="0.01" layer="51"/>
<wire x1="5.8" y1="0.7128" x2="5.8" y2="-0.7872" width="0.01" layer="51"/>
<wire x1="-5.2" y1="0.7128" x2="-5.2" y2="-0.7872" width="0.01" layer="51"/>
<wire x1="5.2" y1="-0.7872" x2="6" y2="-0.7872" width="0.01" layer="51"/>
<wire x1="-6" y1="-0.7872" x2="-5.2" y2="-0.7872" width="0.01" layer="51"/>
<wire x1="-5.2" y1="0.7128" x2="-6" y2="0.7128" width="0.01" layer="51"/>
<wire x1="5.2" y1="0.7128" x2="5.2" y2="-0.7872" width="0.01" layer="51"/>
<wire x1="6" y1="5.7128" x2="6" y2="-5.7872" width="0.2" layer="21"/>
<wire x1="6" y1="3.2128" x2="5.8" y2="3.2128" width="0.01" layer="51"/>
<wire x1="5.8" y1="3.2128" x2="5.2" y2="3.2128" width="0.01" layer="51"/>
<wire x1="-5.8" y1="3.2128" x2="-5.8" y2="1.7128" width="0.01" layer="51"/>
<wire x1="5.8" y1="3.2128" x2="5.8" y2="1.7128" width="0.01" layer="51"/>
<wire x1="-5.2" y1="3.2128" x2="-5.2" y2="1.7128" width="0.01" layer="51"/>
<wire x1="5.2" y1="1.7128" x2="6" y2="1.7128" width="0.01" layer="51"/>
<wire x1="-6" y1="1.7128" x2="-5.2" y2="1.7128" width="0.01" layer="51"/>
<wire x1="-5.2" y1="3.2128" x2="-6" y2="3.2128" width="0.01" layer="51"/>
<wire x1="5.2" y1="3.2128" x2="5.2" y2="1.7128" width="0.01" layer="51"/>
<wire x1="-6" y1="-5.7872" x2="6" y2="-5.7872" width="0.2" layer="21"/>
<wire x1="-5.8" y1="-4.2872" x2="-5.8" y2="-5.7872" width="0.01" layer="51"/>
<wire x1="-5.2" y1="-4.2872" x2="-5.2" y2="-5.7872" width="0.01" layer="51"/>
<wire x1="5.2" y1="-4.2872" x2="5.2" y2="-5.7872" width="0.01" layer="51"/>
<wire x1="5.8" y1="-4.2872" x2="5.8" y2="-5.7872" width="0.01" layer="51"/>
<wire x1="-5.2" y1="-4.2872" x2="-6" y2="-4.2872" width="0.01" layer="51"/>
<wire x1="6" y1="-4.2872" x2="5.2" y2="-4.2872" width="0.01" layer="51"/>
<wire x1="0.3" y1="5.3128" x2="0.3" y2="3.6128" width="0.01" layer="51" curve="180"/>
<wire x1="0.3" y1="0.6128" x2="0.3" y2="-1.6872" width="0.01" layer="51" curve="180"/>
<wire x1="0.3" y1="-1.8872" x2="0.3" y2="-4.1872" width="0.01" layer="51" curve="180"/>
<wire x1="-4.8128" y1="5.7128" x2="-4.8128" y2="-5.7872" width="0.01" layer="51"/>
<wire x1="0.3" y1="5.6128" x2="0.3" y2="3.3128" width="0.01" layer="51" curve="180"/>
<wire x1="0.3" y1="3.1128" x2="0.3" y2="0.8128" width="0.01" layer="51" curve="180"/>
<wire x1="1.8219" y1="3.5392" x2="1.7204" y2="3.6128" width="0.01" layer="51"/>
<wire x1="1.9304" y1="3.4896" x2="1.8219" y2="3.5392" width="0.01" layer="51"/>
<wire x1="2.0431" y1="3.4653" x2="1.9304" y2="3.4896" width="0.01" layer="51"/>
<wire x1="2.1571" y1="3.4669" x2="2.0431" y2="3.4653" width="0.01" layer="51"/>
<wire x1="2.2695" y1="3.4945" x2="2.1571" y2="3.4669" width="0.01" layer="51"/>
<wire x1="2.3946" y1="3.5584" x2="2.2695" y2="3.4945" width="0.01" layer="51"/>
<wire x1="2.509" y1="3.6542" x2="2.3946" y2="3.5584" width="0.01" layer="51"/>
<wire x1="2.6087" y1="3.7787" x2="2.509" y2="3.6542" width="0.01" layer="51"/>
<wire x1="2.6901" y1="3.9274" x2="2.6087" y2="3.7787" width="0.01" layer="51"/>
<wire x1="2.7504" y1="4.095" x2="2.6901" y2="3.9274" width="0.01" layer="51"/>
<wire x1="2.7875" y1="4.2756" x2="2.7504" y2="4.095" width="0.01" layer="51"/>
<wire x1="2.8" y1="4.4628" x2="2.7875" y2="4.2756" width="0.01" layer="51"/>
<wire x1="2.7875" y1="4.65" x2="2.8" y2="4.4628" width="0.01" layer="51"/>
<wire x1="2.7504" y1="4.8306" x2="2.7875" y2="4.65" width="0.01" layer="51"/>
<wire x1="2.6901" y1="4.9982" x2="2.7504" y2="4.8306" width="0.01" layer="51"/>
<wire x1="2.6087" y1="5.1469" x2="2.6901" y2="4.9982" width="0.01" layer="51"/>
<wire x1="2.509" y1="5.2714" x2="2.6087" y2="5.1469" width="0.01" layer="51"/>
<wire x1="2.3946" y1="5.3672" x2="2.509" y2="5.2714" width="0.01" layer="51"/>
<wire x1="2.2695" y1="5.4311" x2="2.3946" y2="5.3672" width="0.01" layer="51"/>
<wire x1="2.1571" y1="5.4587" x2="2.2695" y2="5.4311" width="0.01" layer="51"/>
<wire x1="2.0431" y1="5.4603" x2="2.1571" y2="5.4587" width="0.01" layer="51"/>
<wire x1="1.9304" y1="5.436" x2="2.0431" y2="5.4603" width="0.01" layer="51"/>
<wire x1="1.8219" y1="5.3864" x2="1.9304" y2="5.436" width="0.01" layer="51"/>
<wire x1="1.7204" y1="5.3128" x2="1.8219" y2="5.3864" width="0.01" layer="51"/>
<wire x1="2.0855" y1="3.6032" x2="2.104" y2="3.5879" width="0.01" layer="51"/>
<wire x1="2.2262" y1="3.5125" x2="2.104" y2="3.5879" width="0.01" layer="51"/>
<wire x1="2.3562" y1="3.471" x2="2.2262" y2="3.5125" width="0.01" layer="51"/>
<wire x1="2.4894" y1="3.4646" x2="2.3562" y2="3.471" width="0.01" layer="51"/>
<wire x1="2.6211" y1="3.4938" x2="2.4894" y2="3.4646" width="0.01" layer="51"/>
<wire x1="2.7465" y1="3.5573" x2="2.6211" y2="3.4938" width="0.01" layer="51"/>
<wire x1="2.8613" y1="3.653" x2="2.7465" y2="3.5573" width="0.01" layer="51"/>
<wire x1="2.9614" y1="3.7775" x2="2.8613" y2="3.653" width="0.01" layer="51"/>
<wire x1="3.0432" y1="3.9263" x2="2.9614" y2="3.7775" width="0.01" layer="51"/>
<wire x1="3.1038" y1="4.0942" x2="3.0432" y2="3.9263" width="0.01" layer="51"/>
<wire x1="3.141" y1="4.2752" x2="3.1038" y2="4.0942" width="0.01" layer="51"/>
<wire x1="3.1536" y1="4.4628" x2="3.141" y2="4.2752" width="0.01" layer="51"/>
<wire x1="3.141" y1="4.6504" x2="3.1536" y2="4.4628" width="0.01" layer="51"/>
<wire x1="3.1038" y1="4.8314" x2="3.141" y2="4.6504" width="0.01" layer="51"/>
<wire x1="3.0432" y1="4.9993" x2="3.1038" y2="4.8314" width="0.01" layer="51"/>
<wire x1="2.9614" y1="5.1481" x2="3.0432" y2="4.9993" width="0.01" layer="51"/>
<wire x1="2.8613" y1="5.2726" x2="2.9614" y2="5.1481" width="0.01" layer="51"/>
<wire x1="2.7465" y1="5.3683" x2="2.8613" y2="5.2726" width="0.01" layer="51"/>
<wire x1="2.6211" y1="5.4318" x2="2.7465" y2="5.3683" width="0.01" layer="51"/>
<wire x1="2.4894" y1="5.461" x2="2.6211" y2="5.4318" width="0.01" layer="51"/>
<wire x1="2.3562" y1="5.4546" x2="2.4894" y2="5.461" width="0.01" layer="51"/>
<wire x1="2.2262" y1="5.4131" x2="2.3562" y2="5.4546" width="0.01" layer="51"/>
<wire x1="2.104" y1="5.3377" x2="2.2262" y2="5.4131" width="0.01" layer="51"/>
<wire x1="2.104" y1="5.3377" x2="2.0855" y2="5.3224" width="0.01" layer="51"/>
<wire x1="1.0929" y1="3.3128" x2="0.3" y2="3.3128" width="0.01" layer="51"/>
<wire x1="0.3" y1="3.3128" x2="0.3" y2="3.6128" width="0.01" layer="51"/>
<wire x1="2.6116" y1="-4.2585" x2="2.4536" y2="-4.1872" width="0.01" layer="51"/>
<wire x1="2.7763" y1="-4.2868" x2="2.6116" y2="-4.2585" width="0.01" layer="51"/>
<wire x1="2.9418" y1="-4.271" x2="2.7763" y2="-4.2868" width="0.01" layer="51"/>
<wire x1="3.1023" y1="-4.2118" x2="2.9418" y2="-4.271" width="0.01" layer="51"/>
<wire x1="3.2522" y1="-4.1112" x2="3.1023" y2="-4.2118" width="0.01" layer="51"/>
<wire x1="3.3861" y1="-3.9728" x2="3.2522" y2="-4.1112" width="0.01" layer="51"/>
<wire x1="3.4994" y1="-3.8015" x2="3.3861" y2="-3.9728" width="0.01" layer="51"/>
<wire x1="3.5881" y1="-3.6032" x2="3.4994" y2="-3.8015" width="0.01" layer="51"/>
<wire x1="3.649" y1="-3.385" x2="3.5881" y2="-3.6032" width="0.01" layer="51"/>
<wire x1="3.68" y1="-3.1545" x2="3.649" y2="-3.385" width="0.01" layer="51"/>
<wire x1="3.68" y1="-2.9199" x2="3.68" y2="-3.1545" width="0.01" layer="51"/>
<wire x1="3.649" y1="-2.6894" x2="3.68" y2="-2.9199" width="0.01" layer="51"/>
<wire x1="3.5881" y1="-2.4712" x2="3.649" y2="-2.6894" width="0.01" layer="51"/>
<wire x1="3.4994" y1="-2.2729" x2="3.5881" y2="-2.4712" width="0.01" layer="51"/>
<wire x1="3.3861" y1="-2.1016" x2="3.4994" y2="-2.2729" width="0.01" layer="51"/>
<wire x1="3.2522" y1="-1.9632" x2="3.3861" y2="-2.1016" width="0.01" layer="51"/>
<wire x1="3.1023" y1="-1.8626" x2="3.2522" y2="-1.9632" width="0.01" layer="51"/>
<wire x1="2.9418" y1="-1.8034" x2="3.1023" y2="-1.8626" width="0.01" layer="51"/>
<wire x1="2.7763" y1="-1.7876" x2="2.9418" y2="-1.8034" width="0.01" layer="51"/>
<wire x1="2.6116" y1="-1.8159" x2="2.7763" y2="-1.7876" width="0.01" layer="51"/>
<wire x1="2.4536" y1="-1.8872" x2="2.6116" y2="-1.8159" width="0.01" layer="51"/>
<wire x1="5.8536" y1="5.7128" x2="5.8536" y2="-5.7872" width="0.01" layer="51"/>
<wire x1="1.4464" y1="-4.1872" x2="1.4464" y2="-5.7872" width="0.01" layer="51"/>
<wire x1="1.0929" y1="-4.1872" x2="1.0929" y2="-5.7872" width="0.01" layer="51"/>
<wire x1="1.8219" y1="-3.9608" x2="1.7204" y2="-3.8872" width="0.01" layer="51"/>
<wire x1="1.9304" y1="-4.0104" x2="1.8219" y2="-3.9608" width="0.01" layer="51"/>
<wire x1="2.0431" y1="-4.0347" x2="1.9304" y2="-4.0104" width="0.01" layer="51"/>
<wire x1="2.1571" y1="-4.0331" x2="2.0431" y2="-4.0347" width="0.01" layer="51"/>
<wire x1="2.2695" y1="-4.0055" x2="2.1571" y2="-4.0331" width="0.01" layer="51"/>
<wire x1="2.3946" y1="-3.9416" x2="2.2695" y2="-4.0055" width="0.01" layer="51"/>
<wire x1="2.509" y1="-3.8458" x2="2.3946" y2="-3.9416" width="0.01" layer="51"/>
<wire x1="2.6087" y1="-3.7213" x2="2.509" y2="-3.8458" width="0.01" layer="51"/>
<wire x1="2.6901" y1="-3.5726" x2="2.6087" y2="-3.7213" width="0.01" layer="51"/>
<wire x1="2.7504" y1="-3.405" x2="2.6901" y2="-3.5726" width="0.01" layer="51"/>
<wire x1="2.7875" y1="-3.2244" x2="2.7504" y2="-3.405" width="0.01" layer="51"/>
<wire x1="2.8" y1="-3.0372" x2="2.7875" y2="-3.2244" width="0.01" layer="51"/>
<wire x1="2.7875" y1="-2.85" x2="2.8" y2="-3.0372" width="0.01" layer="51"/>
<wire x1="2.7504" y1="-2.6694" x2="2.7875" y2="-2.85" width="0.01" layer="51"/>
<wire x1="2.6901" y1="-2.5018" x2="2.7504" y2="-2.6694" width="0.01" layer="51"/>
<wire x1="2.6087" y1="-2.3531" x2="2.6901" y2="-2.5018" width="0.01" layer="51"/>
<wire x1="2.509" y1="-2.2286" x2="2.6087" y2="-2.3531" width="0.01" layer="51"/>
<wire x1="2.3946" y1="-2.1328" x2="2.509" y2="-2.2286" width="0.01" layer="51"/>
<wire x1="2.2695" y1="-2.0689" x2="2.3946" y2="-2.1328" width="0.01" layer="51"/>
<wire x1="2.1571" y1="-2.0413" x2="2.2695" y2="-2.0689" width="0.01" layer="51"/>
<wire x1="2.0431" y1="-2.0397" x2="2.1571" y2="-2.0413" width="0.01" layer="51"/>
<wire x1="1.9304" y1="-2.064" x2="2.0431" y2="-2.0397" width="0.01" layer="51"/>
<wire x1="1.8219" y1="-2.1136" x2="1.9304" y2="-2.064" width="0.01" layer="51"/>
<wire x1="1.7204" y1="-2.1872" x2="1.8219" y2="-2.1136" width="0.01" layer="51"/>
<wire x1="2.0855" y1="-3.8968" x2="2.104" y2="-3.9121" width="0.01" layer="51"/>
<wire x1="2.2262" y1="-3.9875" x2="2.104" y2="-3.9121" width="0.01" layer="51"/>
<wire x1="2.3562" y1="-4.029" x2="2.2262" y2="-3.9875" width="0.01" layer="51"/>
<wire x1="2.4894" y1="-4.0354" x2="2.3562" y2="-4.029" width="0.01" layer="51"/>
<wire x1="2.6211" y1="-4.0062" x2="2.4894" y2="-4.0354" width="0.01" layer="51"/>
<wire x1="2.7465" y1="-3.9427" x2="2.6211" y2="-4.0062" width="0.01" layer="51"/>
<wire x1="2.8613" y1="-3.847" x2="2.7465" y2="-3.9427" width="0.01" layer="51"/>
<wire x1="2.9614" y1="-3.7225" x2="2.8613" y2="-3.847" width="0.01" layer="51"/>
<wire x1="3.0432" y1="-3.5737" x2="2.9614" y2="-3.7225" width="0.01" layer="51"/>
<wire x1="3.1038" y1="-3.4058" x2="3.0432" y2="-3.5737" width="0.01" layer="51"/>
<wire x1="3.141" y1="-3.2248" x2="3.1038" y2="-3.4058" width="0.01" layer="51"/>
<wire x1="3.1536" y1="-3.0372" x2="3.141" y2="-3.2248" width="0.01" layer="51"/>
<wire x1="3.141" y1="-2.8496" x2="3.1536" y2="-3.0372" width="0.01" layer="51"/>
<wire x1="3.1038" y1="-2.6686" x2="3.141" y2="-2.8496" width="0.01" layer="51"/>
<wire x1="3.0432" y1="-2.5007" x2="3.1038" y2="-2.6686" width="0.01" layer="51"/>
<wire x1="2.9614" y1="-2.3519" x2="3.0432" y2="-2.5007" width="0.01" layer="51"/>
<wire x1="2.8613" y1="-2.2274" x2="2.9614" y2="-2.3519" width="0.01" layer="51"/>
<wire x1="2.7465" y1="-2.1317" x2="2.8613" y2="-2.2274" width="0.01" layer="51"/>
<wire x1="2.6211" y1="-2.0682" x2="2.7465" y2="-2.1317" width="0.01" layer="51"/>
<wire x1="2.4894" y1="-2.039" x2="2.6211" y2="-2.0682" width="0.01" layer="51"/>
<wire x1="2.3562" y1="-2.0454" x2="2.4894" y2="-2.039" width="0.01" layer="51"/>
<wire x1="2.2262" y1="-2.0869" x2="2.3562" y2="-2.0454" width="0.01" layer="51"/>
<wire x1="2.104" y1="-2.1623" x2="2.2262" y2="-2.0869" width="0.01" layer="51"/>
<wire x1="2.104" y1="-2.1623" x2="2.0855" y2="-2.1776" width="0.01" layer="51"/>
<wire x1="1.2792" y1="-4.1656" x2="1.2842" y2="-4.1644" width="0.01" layer="51"/>
<wire x1="1.269" y1="-4.168" x2="1.2792" y2="-4.1656" width="0.01" layer="51"/>
<wire x1="1.2588" y1="-4.1702" x2="1.269" y2="-4.168" width="0.01" layer="51"/>
<wire x1="1.2536" y1="-4.1713" x2="1.2588" y2="-4.1702" width="0.01" layer="51"/>
<wire x1="1.238" y1="-4.1743" x2="1.2536" y2="-4.1713" width="0.01" layer="51"/>
<wire x1="1.2276" y1="-4.1761" x2="1.238" y2="-4.1743" width="0.01" layer="51"/>
<wire x1="1.217" y1="-4.1778" x2="1.2276" y2="-4.1761" width="0.01" layer="51"/>
<wire x1="1.2064" y1="-4.1794" x2="1.217" y2="-4.1778" width="0.01" layer="51"/>
<wire x1="1.1958" y1="-4.1808" x2="1.2064" y2="-4.1794" width="0.01" layer="51"/>
<wire x1="1.1904" y1="-4.1814" x2="1.1958" y2="-4.1808" width="0.01" layer="51"/>
<wire x1="1.1851" y1="-4.1821" x2="1.1904" y2="-4.1814" width="0.01" layer="51"/>
<wire x1="1.1743" y1="-4.1832" x2="1.1851" y2="-4.1821" width="0.01" layer="51"/>
<wire x1="1.1636" y1="-4.1842" x2="1.1743" y2="-4.1832" width="0.01" layer="51"/>
<wire x1="1.1527" y1="-4.185" x2="1.1636" y2="-4.1842" width="0.01" layer="51"/>
<wire x1="1.1419" y1="-4.1858" x2="1.1527" y2="-4.185" width="0.01" layer="51"/>
<wire x1="1.131" y1="-4.1863" x2="1.1419" y2="-4.1858" width="0.01" layer="51"/>
<wire x1="1.1256" y1="-4.1866" x2="1.131" y2="-4.1863" width="0.01" layer="51"/>
<wire x1="1.1202" y1="-4.1868" x2="1.1256" y2="-4.1866" width="0.01" layer="51"/>
<wire x1="1.1093" y1="-4.187" x2="1.1202" y2="-4.1868" width="0.01" layer="51"/>
<wire x1="1.0983" y1="-4.1872" x2="1.1093" y2="-4.187" width="0.01" layer="51"/>
<wire x1="1.0929" y1="-4.1872" x2="1.0983" y2="-4.1872" width="0.01" layer="51"/>
<wire x1="1.0929" y1="-4.1872" x2="0.3" y2="-4.1872" width="0.01" layer="51"/>
<wire x1="0.3" y1="-3.8872" x2="0.3" y2="-4.1872" width="0.01" layer="51"/>
<wire x1="2.6116" y1="-1.7585" x2="2.4536" y2="-1.6872" width="0.01" layer="51"/>
<wire x1="2.7763" y1="-1.7868" x2="2.6116" y2="-1.7585" width="0.01" layer="51"/>
<wire x1="2.9418" y1="-1.771" x2="2.7763" y2="-1.7868" width="0.01" layer="51"/>
<wire x1="3.1023" y1="-1.7118" x2="2.9418" y2="-1.771" width="0.01" layer="51"/>
<wire x1="3.2522" y1="-1.6112" x2="3.1023" y2="-1.7118" width="0.01" layer="51"/>
<wire x1="3.3861" y1="-1.4728" x2="3.2522" y2="-1.6112" width="0.01" layer="51"/>
<wire x1="3.4994" y1="-1.3015" x2="3.3861" y2="-1.4728" width="0.01" layer="51"/>
<wire x1="3.5881" y1="-1.1032" x2="3.4994" y2="-1.3015" width="0.01" layer="51"/>
<wire x1="3.649" y1="-0.885" x2="3.5881" y2="-1.1032" width="0.01" layer="51"/>
<wire x1="3.68" y1="-0.6545" x2="3.649" y2="-0.885" width="0.01" layer="51"/>
<wire x1="3.68" y1="-0.4199" x2="3.68" y2="-0.6545" width="0.01" layer="51"/>
<wire x1="3.649" y1="-0.1894" x2="3.68" y2="-0.4199" width="0.01" layer="51"/>
<wire x1="3.5881" y1="0.0288" x2="3.649" y2="-0.1894" width="0.01" layer="51"/>
<wire x1="3.4994" y1="0.2271" x2="3.5881" y2="0.0288" width="0.01" layer="51"/>
<wire x1="3.3861" y1="0.3984" x2="3.4994" y2="0.2271" width="0.01" layer="51"/>
<wire x1="3.2522" y1="0.5368" x2="3.3861" y2="0.3984" width="0.01" layer="51"/>
<wire x1="3.1023" y1="0.6374" x2="3.2522" y2="0.5368" width="0.01" layer="51"/>
<wire x1="2.9418" y1="0.6966" x2="3.1023" y2="0.6374" width="0.01" layer="51"/>
<wire x1="2.7763" y1="0.7124" x2="2.9418" y2="0.6966" width="0.01" layer="51"/>
<wire x1="2.6116" y1="0.6841" x2="2.7763" y2="0.7124" width="0.01" layer="51"/>
<wire x1="2.4536" y1="0.6128" x2="2.6116" y2="0.6841" width="0.01" layer="51"/>
<wire x1="1.4464" y1="-1.6872" x2="1.4464" y2="-1.8872" width="0.01" layer="51"/>
<wire x1="1.0929" y1="-1.6872" x2="1.0929" y2="-1.8872" width="0.01" layer="51"/>
<wire x1="1.8219" y1="-1.4608" x2="1.7204" y2="-1.3872" width="0.01" layer="51"/>
<wire x1="1.9304" y1="-1.5104" x2="1.8219" y2="-1.4608" width="0.01" layer="51"/>
<wire x1="2.0431" y1="-1.5347" x2="1.9304" y2="-1.5104" width="0.01" layer="51"/>
<wire x1="2.1571" y1="-1.5331" x2="2.0431" y2="-1.5347" width="0.01" layer="51"/>
<wire x1="2.2695" y1="-1.5055" x2="2.1571" y2="-1.5331" width="0.01" layer="51"/>
<wire x1="2.3946" y1="-1.4416" x2="2.2695" y2="-1.5055" width="0.01" layer="51"/>
<wire x1="2.509" y1="-1.3458" x2="2.3946" y2="-1.4416" width="0.01" layer="51"/>
<wire x1="2.6087" y1="-1.2213" x2="2.509" y2="-1.3458" width="0.01" layer="51"/>
<wire x1="2.6901" y1="-1.0726" x2="2.6087" y2="-1.2213" width="0.01" layer="51"/>
<wire x1="2.7504" y1="-0.905" x2="2.6901" y2="-1.0726" width="0.01" layer="51"/>
<wire x1="2.7875" y1="-0.7244" x2="2.7504" y2="-0.905" width="0.01" layer="51"/>
<wire x1="2.8" y1="-0.5372" x2="2.7875" y2="-0.7244" width="0.01" layer="51"/>
<wire x1="2.7875" y1="-0.35" x2="2.8" y2="-0.5372" width="0.01" layer="51"/>
<wire x1="2.7504" y1="-0.1694" x2="2.7875" y2="-0.35" width="0.01" layer="51"/>
<wire x1="2.6901" y1="-0.0018" x2="2.7504" y2="-0.1694" width="0.01" layer="51"/>
<wire x1="2.6087" y1="0.1469" x2="2.6901" y2="-0.0018" width="0.01" layer="51"/>
<wire x1="2.509" y1="0.2714" x2="2.6087" y2="0.1469" width="0.01" layer="51"/>
<wire x1="2.3946" y1="0.3672" x2="2.509" y2="0.2714" width="0.01" layer="51"/>
<wire x1="2.2695" y1="0.4311" x2="2.3946" y2="0.3672" width="0.01" layer="51"/>
<wire x1="2.1571" y1="0.4587" x2="2.2695" y2="0.4311" width="0.01" layer="51"/>
<wire x1="2.0431" y1="0.4603" x2="2.1571" y2="0.4587" width="0.01" layer="51"/>
<wire x1="1.9304" y1="0.436" x2="2.0431" y2="0.4603" width="0.01" layer="51"/>
<wire x1="1.8219" y1="0.3864" x2="1.9304" y2="0.436" width="0.01" layer="51"/>
<wire x1="1.7204" y1="0.3128" x2="1.8219" y2="0.3864" width="0.01" layer="51"/>
<wire x1="2.0855" y1="-1.3968" x2="2.104" y2="-1.4121" width="0.01" layer="51"/>
<wire x1="2.2262" y1="-1.4875" x2="2.104" y2="-1.4121" width="0.01" layer="51"/>
<wire x1="2.3562" y1="-1.529" x2="2.2262" y2="-1.4875" width="0.01" layer="51"/>
<wire x1="2.4894" y1="-1.5354" x2="2.3562" y2="-1.529" width="0.01" layer="51"/>
<wire x1="2.6211" y1="-1.5062" x2="2.4894" y2="-1.5354" width="0.01" layer="51"/>
<wire x1="2.7465" y1="-1.4427" x2="2.6211" y2="-1.5062" width="0.01" layer="51"/>
<wire x1="2.8613" y1="-1.347" x2="2.7465" y2="-1.4427" width="0.01" layer="51"/>
<wire x1="2.9614" y1="-1.2225" x2="2.8613" y2="-1.347" width="0.01" layer="51"/>
<wire x1="3.0432" y1="-1.0737" x2="2.9614" y2="-1.2225" width="0.01" layer="51"/>
<wire x1="3.1038" y1="-0.9058" x2="3.0432" y2="-1.0737" width="0.01" layer="51"/>
<wire x1="3.141" y1="-0.7248" x2="3.1038" y2="-0.9058" width="0.01" layer="51"/>
<wire x1="3.1536" y1="-0.5372" x2="3.141" y2="-0.7248" width="0.01" layer="51"/>
<wire x1="3.141" y1="-0.3496" x2="3.1536" y2="-0.5372" width="0.01" layer="51"/>
<wire x1="3.1038" y1="-0.1686" x2="3.141" y2="-0.3496" width="0.01" layer="51"/>
<wire x1="3.0432" y1="-0.0007" x2="3.1038" y2="-0.1686" width="0.01" layer="51"/>
<wire x1="2.9614" y1="0.1481" x2="3.0432" y2="-0.0007" width="0.01" layer="51"/>
<wire x1="2.8613" y1="0.2726" x2="2.9614" y2="0.1481" width="0.01" layer="51"/>
<wire x1="2.7465" y1="0.3683" x2="2.8613" y2="0.2726" width="0.01" layer="51"/>
<wire x1="2.6211" y1="0.4318" x2="2.7465" y2="0.3683" width="0.01" layer="51"/>
<wire x1="2.4894" y1="0.461" x2="2.6211" y2="0.4318" width="0.01" layer="51"/>
<wire x1="2.3562" y1="0.4546" x2="2.4894" y2="0.461" width="0.01" layer="51"/>
<wire x1="2.2262" y1="0.4131" x2="2.3562" y2="0.4546" width="0.01" layer="51"/>
<wire x1="2.104" y1="0.3377" x2="2.2262" y2="0.4131" width="0.01" layer="51"/>
<wire x1="2.104" y1="0.3377" x2="2.0855" y2="0.3224" width="0.01" layer="51"/>
<wire x1="1.2792" y1="-1.6656" x2="1.2842" y2="-1.6644" width="0.01" layer="51"/>
<wire x1="1.269" y1="-1.668" x2="1.2792" y2="-1.6656" width="0.01" layer="51"/>
<wire x1="1.2588" y1="-1.6702" x2="1.269" y2="-1.668" width="0.01" layer="51"/>
<wire x1="1.2536" y1="-1.6713" x2="1.2588" y2="-1.6702" width="0.01" layer="51"/>
<wire x1="1.238" y1="-1.6743" x2="1.2536" y2="-1.6713" width="0.01" layer="51"/>
<wire x1="1.2276" y1="-1.6761" x2="1.238" y2="-1.6743" width="0.01" layer="51"/>
<wire x1="1.217" y1="-1.6778" x2="1.2276" y2="-1.6761" width="0.01" layer="51"/>
<wire x1="1.2064" y1="-1.6794" x2="1.217" y2="-1.6778" width="0.01" layer="51"/>
<wire x1="1.1958" y1="-1.6808" x2="1.2064" y2="-1.6794" width="0.01" layer="51"/>
<wire x1="1.1904" y1="-1.6814" x2="1.1958" y2="-1.6808" width="0.01" layer="51"/>
<wire x1="1.1851" y1="-1.6821" x2="1.1904" y2="-1.6814" width="0.01" layer="51"/>
<wire x1="1.1743" y1="-1.6832" x2="1.1851" y2="-1.6821" width="0.01" layer="51"/>
<wire x1="1.1636" y1="-1.6842" x2="1.1743" y2="-1.6832" width="0.01" layer="51"/>
<wire x1="1.1527" y1="-1.685" x2="1.1636" y2="-1.6842" width="0.01" layer="51"/>
<wire x1="1.1419" y1="-1.6858" x2="1.1527" y2="-1.685" width="0.01" layer="51"/>
<wire x1="1.131" y1="-1.6863" x2="1.1419" y2="-1.6858" width="0.01" layer="51"/>
<wire x1="1.1256" y1="-1.6866" x2="1.131" y2="-1.6863" width="0.01" layer="51"/>
<wire x1="1.1202" y1="-1.6868" x2="1.1256" y2="-1.6866" width="0.01" layer="51"/>
<wire x1="1.1093" y1="-1.687" x2="1.1202" y2="-1.6868" width="0.01" layer="51"/>
<wire x1="1.0983" y1="-1.6872" x2="1.1093" y2="-1.687" width="0.01" layer="51"/>
<wire x1="1.0929" y1="-1.6872" x2="1.0983" y2="-1.6872" width="0.01" layer="51"/>
<wire x1="1.0929" y1="-1.6872" x2="0.3" y2="-1.6872" width="0.01" layer="51"/>
<wire x1="0.3" y1="-1.3872" x2="0.3" y2="-1.6872" width="0.01" layer="51"/>
<wire x1="2.6116" y1="0.7415" x2="2.4536" y2="0.8128" width="0.01" layer="51"/>
<wire x1="2.7763" y1="0.7132" x2="2.6116" y2="0.7415" width="0.01" layer="51"/>
<wire x1="2.9418" y1="0.729" x2="2.7763" y2="0.7132" width="0.01" layer="51"/>
<wire x1="3.1023" y1="0.7882" x2="2.9418" y2="0.729" width="0.01" layer="51"/>
<wire x1="3.2522" y1="0.8888" x2="3.1023" y2="0.7882" width="0.01" layer="51"/>
<wire x1="3.3861" y1="1.0272" x2="3.2522" y2="0.8888" width="0.01" layer="51"/>
<wire x1="3.4994" y1="1.1985" x2="3.3861" y2="1.0272" width="0.01" layer="51"/>
<wire x1="3.5881" y1="1.3968" x2="3.4994" y2="1.1985" width="0.01" layer="51"/>
<wire x1="3.649" y1="1.615" x2="3.5881" y2="1.3968" width="0.01" layer="51"/>
<wire x1="3.68" y1="1.8455" x2="3.649" y2="1.615" width="0.01" layer="51"/>
<wire x1="3.68" y1="2.0801" x2="3.68" y2="1.8455" width="0.01" layer="51"/>
<wire x1="3.649" y1="2.3106" x2="3.68" y2="2.0801" width="0.01" layer="51"/>
<wire x1="3.5881" y1="2.5288" x2="3.649" y2="2.3106" width="0.01" layer="51"/>
<wire x1="3.4994" y1="2.7271" x2="3.5881" y2="2.5288" width="0.01" layer="51"/>
<wire x1="3.3861" y1="2.8984" x2="3.4994" y2="2.7271" width="0.01" layer="51"/>
<wire x1="3.2522" y1="3.0368" x2="3.3861" y2="2.8984" width="0.01" layer="51"/>
<wire x1="3.1023" y1="3.1374" x2="3.2522" y2="3.0368" width="0.01" layer="51"/>
<wire x1="2.9418" y1="3.1966" x2="3.1023" y2="3.1374" width="0.01" layer="51"/>
<wire x1="2.7763" y1="3.2124" x2="2.9418" y2="3.1966" width="0.01" layer="51"/>
<wire x1="2.6116" y1="3.1841" x2="2.7763" y2="3.2124" width="0.01" layer="51"/>
<wire x1="2.4536" y1="3.1128" x2="2.6116" y2="3.1841" width="0.01" layer="51"/>
<wire x1="2.6116" y1="3.2415" x2="2.4536" y2="3.3128" width="0.01" layer="51"/>
<wire x1="2.7763" y1="3.2132" x2="2.6116" y2="3.2415" width="0.01" layer="51"/>
<wire x1="2.9418" y1="3.229" x2="2.7763" y2="3.2132" width="0.01" layer="51"/>
<wire x1="3.1023" y1="3.2882" x2="2.9418" y2="3.229" width="0.01" layer="51"/>
<wire x1="3.2522" y1="3.3888" x2="3.1023" y2="3.2882" width="0.01" layer="51"/>
<wire x1="3.3861" y1="3.5272" x2="3.2522" y2="3.3888" width="0.01" layer="51"/>
<wire x1="3.4994" y1="3.6985" x2="3.3861" y2="3.5272" width="0.01" layer="51"/>
<wire x1="3.5881" y1="3.8968" x2="3.4994" y2="3.6985" width="0.01" layer="51"/>
<wire x1="3.649" y1="4.115" x2="3.5881" y2="3.8968" width="0.01" layer="51"/>
<wire x1="3.68" y1="4.3455" x2="3.649" y2="4.115" width="0.01" layer="51"/>
<wire x1="3.68" y1="4.5801" x2="3.68" y2="4.3455" width="0.01" layer="51"/>
<wire x1="3.649" y1="4.8106" x2="3.68" y2="4.5801" width="0.01" layer="51"/>
<wire x1="3.5881" y1="5.0288" x2="3.649" y2="4.8106" width="0.01" layer="51"/>
<wire x1="3.4994" y1="5.2271" x2="3.5881" y2="5.0288" width="0.01" layer="51"/>
<wire x1="3.3861" y1="5.3984" x2="3.4994" y2="5.2271" width="0.01" layer="51"/>
<wire x1="3.2522" y1="5.5368" x2="3.3861" y2="5.3984" width="0.01" layer="51"/>
<wire x1="3.1023" y1="5.6374" x2="3.2522" y2="5.5368" width="0.01" layer="51"/>
<wire x1="2.9418" y1="5.6966" x2="3.1023" y2="5.6374" width="0.2" layer="21"/>
<wire x1="2.7763" y1="5.7124" x2="2.9418" y2="5.6966" width="0.2" layer="21"/>
<wire x1="2.6116" y1="5.6841" x2="2.7763" y2="5.7124" width="0.2" layer="21"/>
<wire x1="2.4536" y1="5.6128" x2="2.6116" y2="5.6841" width="0.2" layer="21"/>
<wire x1="1.4464" y1="0.8128" x2="1.4464" y2="0.6128" width="0.01" layer="51"/>
<wire x1="1.0929" y1="0.8128" x2="1.0929" y2="0.6128" width="0.01" layer="51"/>
<wire x1="1.8219" y1="1.0392" x2="1.7204" y2="1.1128" width="0.01" layer="51"/>
<wire x1="1.9304" y1="0.9896" x2="1.8219" y2="1.0392" width="0.01" layer="51"/>
<wire x1="2.0431" y1="0.9653" x2="1.9304" y2="0.9896" width="0.01" layer="51"/>
<wire x1="2.1571" y1="0.9669" x2="2.0431" y2="0.9653" width="0.01" layer="51"/>
<wire x1="2.2695" y1="0.9945" x2="2.1571" y2="0.9669" width="0.01" layer="51"/>
<wire x1="2.3946" y1="1.0584" x2="2.2695" y2="0.9945" width="0.01" layer="51"/>
<wire x1="2.509" y1="1.1542" x2="2.3946" y2="1.0584" width="0.01" layer="51"/>
<wire x1="2.6087" y1="1.2787" x2="2.509" y2="1.1542" width="0.01" layer="51"/>
<wire x1="2.6901" y1="1.4274" x2="2.6087" y2="1.2787" width="0.01" layer="51"/>
<wire x1="2.7504" y1="1.595" x2="2.6901" y2="1.4274" width="0.01" layer="51"/>
<wire x1="2.7875" y1="1.7756" x2="2.7504" y2="1.595" width="0.01" layer="51"/>
<wire x1="2.8" y1="1.9628" x2="2.7875" y2="1.7756" width="0.01" layer="51"/>
<wire x1="2.7875" y1="2.15" x2="2.8" y2="1.9628" width="0.01" layer="51"/>
<wire x1="2.7504" y1="2.3306" x2="2.7875" y2="2.15" width="0.01" layer="51"/>
<wire x1="2.6901" y1="2.4982" x2="2.7504" y2="2.3306" width="0.01" layer="51"/>
<wire x1="2.6087" y1="2.6469" x2="2.6901" y2="2.4982" width="0.01" layer="51"/>
<wire x1="2.509" y1="2.7714" x2="2.6087" y2="2.6469" width="0.01" layer="51"/>
<wire x1="2.3946" y1="2.8672" x2="2.509" y2="2.7714" width="0.01" layer="51"/>
<wire x1="2.2695" y1="2.9311" x2="2.3946" y2="2.8672" width="0.01" layer="51"/>
<wire x1="2.1571" y1="2.9587" x2="2.2695" y2="2.9311" width="0.01" layer="51"/>
<wire x1="2.0431" y1="2.9603" x2="2.1571" y2="2.9587" width="0.01" layer="51"/>
<wire x1="1.9304" y1="2.936" x2="2.0431" y2="2.9603" width="0.01" layer="51"/>
<wire x1="1.8219" y1="2.8864" x2="1.9304" y2="2.936" width="0.01" layer="51"/>
<wire x1="1.7204" y1="2.8128" x2="1.8219" y2="2.8864" width="0.01" layer="51"/>
<wire x1="2.0855" y1="1.1032" x2="2.104" y2="1.0879" width="0.01" layer="51"/>
<wire x1="2.2262" y1="1.0125" x2="2.104" y2="1.0879" width="0.01" layer="51"/>
<wire x1="2.3562" y1="0.971" x2="2.2262" y2="1.0125" width="0.01" layer="51"/>
<wire x1="2.4894" y1="0.9646" x2="2.3562" y2="0.971" width="0.01" layer="51"/>
<wire x1="2.6211" y1="0.9938" x2="2.4894" y2="0.9646" width="0.01" layer="51"/>
<wire x1="2.7465" y1="1.0573" x2="2.6211" y2="0.9938" width="0.01" layer="51"/>
<wire x1="2.8613" y1="1.153" x2="2.7465" y2="1.0573" width="0.01" layer="51"/>
<wire x1="2.9614" y1="1.2775" x2="2.8613" y2="1.153" width="0.01" layer="51"/>
<wire x1="3.0432" y1="1.4263" x2="2.9614" y2="1.2775" width="0.01" layer="51"/>
<wire x1="3.1038" y1="1.5942" x2="3.0432" y2="1.4263" width="0.01" layer="51"/>
<wire x1="3.141" y1="1.7752" x2="3.1038" y2="1.5942" width="0.01" layer="51"/>
<wire x1="3.1536" y1="1.9628" x2="3.141" y2="1.7752" width="0.01" layer="51"/>
<wire x1="3.141" y1="2.1504" x2="3.1536" y2="1.9628" width="0.01" layer="51"/>
<wire x1="3.1038" y1="2.3314" x2="3.141" y2="2.1504" width="0.01" layer="51"/>
<wire x1="3.0432" y1="2.4993" x2="3.1038" y2="2.3314" width="0.01" layer="51"/>
<wire x1="2.9614" y1="2.6481" x2="3.0432" y2="2.4993" width="0.01" layer="51"/>
<wire x1="2.8613" y1="2.7726" x2="2.9614" y2="2.6481" width="0.01" layer="51"/>
<wire x1="2.7465" y1="2.8683" x2="2.8613" y2="2.7726" width="0.01" layer="51"/>
<wire x1="2.6211" y1="2.9318" x2="2.7465" y2="2.8683" width="0.01" layer="51"/>
<wire x1="2.4894" y1="2.961" x2="2.6211" y2="2.9318" width="0.01" layer="51"/>
<wire x1="2.3562" y1="2.9546" x2="2.4894" y2="2.961" width="0.01" layer="51"/>
<wire x1="2.2262" y1="2.9131" x2="2.3562" y2="2.9546" width="0.01" layer="51"/>
<wire x1="2.104" y1="2.8377" x2="2.2262" y2="2.9131" width="0.01" layer="51"/>
<wire x1="2.104" y1="2.8377" x2="2.0855" y2="2.8224" width="0.01" layer="51"/>
<wire x1="1.2792" y1="0.8344" x2="1.2842" y2="0.8356" width="0.01" layer="51"/>
<wire x1="1.269" y1="0.832" x2="1.2792" y2="0.8344" width="0.01" layer="51"/>
<wire x1="1.2588" y1="0.8298" x2="1.269" y2="0.832" width="0.01" layer="51"/>
<wire x1="1.2536" y1="0.8287" x2="1.2588" y2="0.8298" width="0.01" layer="51"/>
<wire x1="1.238" y1="0.8257" x2="1.2536" y2="0.8287" width="0.01" layer="51"/>
<wire x1="1.2276" y1="0.8239" x2="1.238" y2="0.8257" width="0.01" layer="51"/>
<wire x1="1.217" y1="0.8222" x2="1.2276" y2="0.8239" width="0.01" layer="51"/>
<wire x1="1.2064" y1="0.8206" x2="1.217" y2="0.8222" width="0.01" layer="51"/>
<wire x1="1.1958" y1="0.8192" x2="1.2064" y2="0.8206" width="0.01" layer="51"/>
<wire x1="1.1904" y1="0.8186" x2="1.1958" y2="0.8192" width="0.01" layer="51"/>
<wire x1="1.1851" y1="0.8179" x2="1.1904" y2="0.8186" width="0.01" layer="51"/>
<wire x1="1.1743" y1="0.8168" x2="1.1851" y2="0.8179" width="0.01" layer="51"/>
<wire x1="1.1636" y1="0.8158" x2="1.1743" y2="0.8168" width="0.01" layer="51"/>
<wire x1="1.1527" y1="0.815" x2="1.1636" y2="0.8158" width="0.01" layer="51"/>
<wire x1="1.1419" y1="0.8142" x2="1.1527" y2="0.815" width="0.01" layer="51"/>
<wire x1="1.131" y1="0.8137" x2="1.1419" y2="0.8142" width="0.01" layer="51"/>
<wire x1="1.1256" y1="0.8134" x2="1.131" y2="0.8137" width="0.01" layer="51"/>
<wire x1="1.1202" y1="0.8132" x2="1.1256" y2="0.8134" width="0.01" layer="51"/>
<wire x1="1.1093" y1="0.813" x2="1.1202" y2="0.8132" width="0.01" layer="51"/>
<wire x1="1.0983" y1="0.8128" x2="1.1093" y2="0.813" width="0.01" layer="51"/>
<wire x1="1.0929" y1="0.8128" x2="1.0983" y2="0.8128" width="0.01" layer="51"/>
<wire x1="1.0929" y1="0.8128" x2="0.3" y2="0.8128" width="0.01" layer="51"/>
<wire x1="0.3" y1="1.1128" x2="0.3" y2="0.8128" width="0.01" layer="51"/>
<wire x1="1.3858" y1="3.6128" x2="1.3858" y2="5.3128" width="0.01" layer="51"/>
<wire x1="1.3858" y1="-3.8872" x2="1.3858" y2="-2.1872" width="0.01" layer="51"/>
<wire x1="1.3858" y1="-1.3872" x2="1.3858" y2="0.3128" width="0.01" layer="51"/>
<wire x1="1.3858" y1="1.1128" x2="1.3858" y2="2.8128" width="0.01" layer="51"/>
<wire x1="1.1" y1="4.8878" x2="1.1" y2="4.1378" width="0.01" layer="51"/>
<wire x1="1.5" y1="4.8878" x2="1.1" y2="4.8878" width="0.01" layer="51"/>
<wire x1="1.1" y1="4.1378" x2="1.5" y2="4.1378" width="0.01" layer="51"/>
<wire x1="1.5" y1="4.1378" x2="1.5" y2="4.8878" width="0.01" layer="51"/>
<wire x1="1.1" y1="-0.1122" x2="1.1" y2="-0.8622" width="0.01" layer="51"/>
<wire x1="1.5" y1="-0.1122" x2="1.1" y2="-0.1122" width="0.01" layer="51"/>
<wire x1="1.1" y1="-0.8622" x2="1.5" y2="-0.8622" width="0.01" layer="51"/>
<wire x1="1.5" y1="-0.8622" x2="1.5" y2="-0.1122" width="0.01" layer="51"/>
<wire x1="-3.9" y1="2.3878" x2="-3.9" y2="1.6378" width="0.01" layer="51"/>
<wire x1="-3.5" y1="2.3878" x2="-3.9" y2="2.3878" width="0.01" layer="51"/>
<wire x1="-3.5" y1="1.6378" x2="-3.9" y2="1.6378" width="0.01" layer="51"/>
<wire x1="-3.9" y1="-2.6122" x2="-3.9" y2="-3.3622" width="0.01" layer="51"/>
<wire x1="-3.5" y1="-2.6122" x2="-3.9" y2="-2.6122" width="0.01" layer="51"/>
<wire x1="-3.5" y1="-3.3622" x2="-3.9" y2="-3.3622" width="0.01" layer="51"/>
<wire x1="-3.4" y1="4.3236" x2="-3.4" y2="4.9128" width="0.01" layer="51"/>
<wire x1="-1.6" y1="4.3236" x2="-1.6" y2="4.9128" width="0.01" layer="51"/>
<wire x1="-1.2" y1="4.9128" x2="-3.5" y2="4.9128" width="0.01" layer="51"/>
<wire x1="-3.5" y1="4.9128" x2="-3.8" y2="4.9128" width="0.01" layer="51"/>
<wire x1="-3.8" y1="4.9128" x2="-4" y2="4.9128" width="0.01" layer="51"/>
<wire x1="-3.5" y1="3.2128" x2="-3.5" y2="4.9128" width="0.01" layer="51"/>
<wire x1="-3.8" y1="3.2128" x2="-3.8" y2="4.9128" width="0.01" layer="51"/>
<wire x1="-3.4" y1="-3.1764" x2="-3.4" y2="-2.5872" width="0.01" layer="51"/>
<wire x1="-1.6" y1="-3.1764" x2="-1.6" y2="-2.5872" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-2.5872" x2="-3.5" y2="-2.5872" width="0.01" layer="51"/>
<wire x1="-3.5" y1="-2.5872" x2="-3.8" y2="-2.5872" width="0.01" layer="51"/>
<wire x1="-3.8" y1="-2.5872" x2="-4" y2="-2.5872" width="0.01" layer="51"/>
<wire x1="-3.5" y1="-4.2872" x2="-3.5" y2="-2.5872" width="0.01" layer="51"/>
<wire x1="-3.8" y1="-4.2872" x2="-3.8" y2="-2.5872" width="0.01" layer="51"/>
<wire x1="-3.4" y1="-0.6764" x2="-3.4" y2="-0.0872" width="0.01" layer="51"/>
<wire x1="-1.6" y1="-0.6764" x2="-1.6" y2="-0.0872" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-0.0872" x2="-3.5" y2="-0.0872" width="0.01" layer="51"/>
<wire x1="-3.5" y1="-0.0872" x2="-3.8" y2="-0.0872" width="0.01" layer="51"/>
<wire x1="-3.8" y1="-0.0872" x2="-4" y2="-0.0872" width="0.01" layer="51"/>
<wire x1="-3.5" y1="-1.7872" x2="-3.5" y2="-0.0872" width="0.01" layer="51"/>
<wire x1="-3.8" y1="-1.7872" x2="-3.8" y2="-0.0872" width="0.01" layer="51"/>
<wire x1="-3.4" y1="1.8236" x2="-3.4" y2="2.4128" width="0.01" layer="51"/>
<wire x1="-1.6" y1="1.8236" x2="-1.6" y2="2.4128" width="0.01" layer="51"/>
<wire x1="-1.2" y1="2.4128" x2="-3.5" y2="2.4128" width="0.01" layer="51"/>
<wire x1="-3.5" y1="2.4128" x2="-3.8" y2="2.4128" width="0.01" layer="51"/>
<wire x1="-3.8" y1="2.4128" x2="-4" y2="2.4128" width="0.01" layer="51"/>
<wire x1="-3.5" y1="0.7128" x2="-3.5" y2="2.4128" width="0.01" layer="51"/>
<wire x1="-3.8" y1="0.7128" x2="-3.8" y2="2.4128" width="0.01" layer="51"/>
<wire x1="-4" y1="3.2128" x2="-4" y2="3.9628" width="0.01" layer="51"/>
<wire x1="-4" y1="3.9628" x2="-4" y2="4.1628" width="0.01" layer="51"/>
<wire x1="-4" y1="4.1628" x2="-4" y2="4.9128" width="0.01" layer="51"/>
<wire x1="-3.4" y1="3.2128" x2="-3.4" y2="3.802" width="0.01" layer="51"/>
<wire x1="-1.2" y1="3.2128" x2="-1.6" y2="3.2128" width="0.01" layer="51"/>
<wire x1="-1.6" y1="3.2128" x2="-4" y2="3.2128" width="0.01" layer="51"/>
<wire x1="-1.6" y1="3.2128" x2="-1.6" y2="3.802" width="0.01" layer="51"/>
<wire x1="-1.2" y1="4.2172" x2="-1.2" y2="4.9128" width="0.01" layer="51"/>
<wire x1="-4" y1="4.1628" x2="-3.4" y2="4.3236" width="0.01" layer="51"/>
<wire x1="-3.4" y1="4.3236" x2="-1.6" y2="4.3236" width="0.01" layer="51"/>
<wire x1="-1.5971" y1="4.3236" x2="-1.6" y2="4.3236" width="0.01" layer="51"/>
<wire x1="-1.5913" y1="4.3235" x2="-1.5971" y2="4.3236" width="0.01" layer="51"/>
<wire x1="-1.5826" y1="4.3235" x2="-1.5913" y2="4.3235" width="0.01" layer="51"/>
<wire x1="-1.5796" y1="4.3234" x2="-1.5826" y2="4.3235" width="0.01" layer="51"/>
<wire x1="-1.5622" y1="4.3231" x2="-1.5796" y2="4.3234" width="0.01" layer="51"/>
<wire x1="-1.5565" y1="4.3229" x2="-1.5622" y2="4.3231" width="0.01" layer="51"/>
<wire x1="-1.5507" y1="4.3228" x2="-1.5565" y2="4.3229" width="0.01" layer="51"/>
<wire x1="-1.5478" y1="4.3227" x2="-1.5507" y2="4.3228" width="0.01" layer="51"/>
<wire x1="-1.5449" y1="4.3225" x2="-1.5478" y2="4.3227" width="0.01" layer="51"/>
<wire x1="-1.5392" y1="4.3223" x2="-1.5449" y2="4.3225" width="0.01" layer="51"/>
<wire x1="-1.5334" y1="4.3221" x2="-1.5392" y2="4.3223" width="0.01" layer="51"/>
<wire x1="-1.5163" y1="4.3212" x2="-1.5334" y2="4.3221" width="0.01" layer="51"/>
<wire x1="-1.5134" y1="4.321" x2="-1.5163" y2="4.3212" width="0.01" layer="51"/>
<wire x1="-1.5106" y1="4.3209" x2="-1.5134" y2="4.321" width="0.01" layer="51"/>
<wire x1="-1.5049" y1="4.3205" x2="-1.5106" y2="4.3209" width="0.01" layer="51"/>
<wire x1="-1.4881" y1="4.3193" x2="-1.5049" y2="4.3205" width="0.01" layer="51"/>
<wire x1="-1.4825" y1="4.3188" x2="-1.4881" y2="4.3193" width="0.01" layer="51"/>
<wire x1="-1.4769" y1="4.3184" x2="-1.4825" y2="4.3188" width="0.01" layer="51"/>
<wire x1="-1.4659" y1="4.3174" x2="-1.4769" y2="4.3184" width="0.01" layer="51"/>
<wire x1="-1.4605" y1="4.3168" x2="-1.4659" y2="4.3174" width="0.01" layer="51"/>
<wire x1="-1.455" y1="4.3163" x2="-1.4605" y2="4.3168" width="0.01" layer="51"/>
<wire x1="-1.4442" y1="4.3151" x2="-1.455" y2="4.3163" width="0.01" layer="51"/>
<wire x1="-1.4336" y1="4.3139" x2="-1.4442" y2="4.3151" width="0.01" layer="51"/>
<wire x1="-1.4283" y1="4.3132" x2="-1.4336" y2="4.3139" width="0.01" layer="51"/>
<wire x1="-1.4179" y1="4.3118" x2="-1.4283" y2="4.3132" width="0.01" layer="51"/>
<wire x1="-1.4153" y1="4.3115" x2="-1.4179" y2="4.3118" width="0.01" layer="51"/>
<wire x1="-1.4127" y1="4.3111" x2="-1.4153" y2="4.3115" width="0.01" layer="51"/>
<wire x1="-1.4076" y1="4.3104" x2="-1.4127" y2="4.3111" width="0.01" layer="51"/>
<wire x1="-1.4025" y1="4.3096" x2="-1.4076" y2="4.3104" width="0.01" layer="51"/>
<wire x1="-1.3875" y1="4.3072" x2="-1.4025" y2="4.3096" width="0.01" layer="51"/>
<wire x1="-1.3851" y1="4.3068" x2="-1.3875" y2="4.3072" width="0.01" layer="51"/>
<wire x1="-1.3826" y1="4.3064" x2="-1.3851" y2="4.3068" width="0.01" layer="51"/>
<wire x1="-1.3682" y1="4.3037" x2="-1.3826" y2="4.3064" width="0.01" layer="51"/>
<wire x1="-1.3588" y1="4.3019" x2="-1.3682" y2="4.3037" width="0.01" layer="51"/>
<wire x1="-1.3542" y1="4.3009" x2="-1.3588" y2="4.3019" width="0.01" layer="51"/>
<wire x1="-1.3496" y1="4.3" x2="-1.3542" y2="4.3009" width="0.01" layer="51"/>
<wire x1="-1.3451" y1="4.299" x2="-1.3496" y2="4.3" width="0.01" layer="51"/>
<wire x1="-1.3363" y1="4.297" x2="-1.3451" y2="4.299" width="0.01" layer="51"/>
<wire x1="-1.3319" y1="4.2959" x2="-1.3363" y2="4.297" width="0.01" layer="51"/>
<wire x1="-1.3298" y1="4.2954" x2="-1.3319" y2="4.2959" width="0.01" layer="51"/>
<wire x1="-1.3276" y1="4.2949" x2="-1.3298" y2="4.2954" width="0.01" layer="51"/>
<wire x1="-1.3192" y1="4.2927" x2="-1.3276" y2="4.2949" width="0.01" layer="51"/>
<wire x1="-1.3172" y1="4.2922" x2="-1.3192" y2="4.2927" width="0.01" layer="51"/>
<wire x1="-1.3151" y1="4.2916" x2="-1.3172" y2="4.2922" width="0.01" layer="51"/>
<wire x1="-1.3071" y1="4.2894" x2="-1.3151" y2="4.2916" width="0.01" layer="51"/>
<wire x1="-1.3031" y1="4.2882" x2="-1.3071" y2="4.2894" width="0.01" layer="51"/>
<wire x1="-1.2993" y1="4.2871" x2="-1.3031" y2="4.2882" width="0.01" layer="51"/>
<wire x1="-1.2917" y1="4.2847" x2="-1.2993" y2="4.2871" width="0.01" layer="51"/>
<wire x1="-1.288" y1="4.2835" x2="-1.2917" y2="4.2847" width="0.01" layer="51"/>
<wire x1="-1.2844" y1="4.2823" x2="-1.288" y2="4.2835" width="0.01" layer="51"/>
<wire x1="-1.2827" y1="4.2816" x2="-1.2844" y2="4.2823" width="0.01" layer="51"/>
<wire x1="-1.2809" y1="4.281" x2="-1.2827" y2="4.2816" width="0.01" layer="51"/>
<wire x1="-1.2774" y1="4.2798" x2="-1.2809" y2="4.281" width="0.01" layer="51"/>
<wire x1="-1.274" y1="4.2785" x2="-1.2774" y2="4.2798" width="0.01" layer="51"/>
<wire x1="-1.2674" y1="4.2759" x2="-1.274" y2="4.2785" width="0.01" layer="51"/>
<wire x1="-1.2642" y1="4.2746" x2="-1.2674" y2="4.2759" width="0.01" layer="51"/>
<wire x1="-1.2626" y1="4.274" x2="-1.2642" y2="4.2746" width="0.01" layer="51"/>
<wire x1="-1.2611" y1="4.2733" x2="-1.2626" y2="4.274" width="0.01" layer="51"/>
<wire x1="-1.258" y1="4.272" x2="-1.2611" y2="4.2733" width="0.01" layer="51"/>
<wire x1="-1.2551" y1="4.2707" x2="-1.258" y2="4.272" width="0.01" layer="51"/>
<wire x1="-1.2521" y1="4.2693" x2="-1.2551" y2="4.2707" width="0.01" layer="51"/>
<wire x1="-1.2493" y1="4.2679" x2="-1.2521" y2="4.2693" width="0.01" layer="51"/>
<wire x1="-1.2465" y1="4.2666" x2="-1.2493" y2="4.2679" width="0.01" layer="51"/>
<wire x1="-1.2387" y1="4.2624" x2="-1.2465" y2="4.2666" width="0.01" layer="51"/>
<wire x1="-1.2339" y1="4.2596" x2="-1.2387" y2="4.2624" width="0.01" layer="51"/>
<wire x1="-1.2316" y1="4.2581" x2="-1.2339" y2="4.2596" width="0.01" layer="51"/>
<wire x1="-1.2304" y1="4.2574" x2="-1.2316" y2="4.2581" width="0.01" layer="51"/>
<wire x1="-1.2293" y1="4.2567" x2="-1.2304" y2="4.2574" width="0.01" layer="51"/>
<wire x1="-1.2272" y1="4.2552" x2="-1.2293" y2="4.2567" width="0.01" layer="51"/>
<wire x1="-1.2251" y1="4.2538" x2="-1.2272" y2="4.2552" width="0.01" layer="51"/>
<wire x1="-1.2231" y1="4.2523" x2="-1.2251" y2="4.2538" width="0.01" layer="51"/>
<wire x1="-1.2212" y1="4.2508" x2="-1.2231" y2="4.2523" width="0.01" layer="51"/>
<wire x1="-1.2194" y1="4.2494" x2="-1.2212" y2="4.2508" width="0.01" layer="51"/>
<wire x1="-1.2185" y1="4.2486" x2="-1.2194" y2="4.2494" width="0.01" layer="51"/>
<wire x1="-1.2176" y1="4.2479" x2="-1.2185" y2="4.2486" width="0.01" layer="51"/>
<wire x1="-1.2144" y1="4.2449" x2="-1.2176" y2="4.2479" width="0.01" layer="51"/>
<wire x1="-1.2129" y1="4.2434" x2="-1.2144" y2="4.2449" width="0.01" layer="51"/>
<wire x1="-1.2115" y1="4.2419" x2="-1.2129" y2="4.2434" width="0.01" layer="51"/>
<wire x1="-1.2101" y1="4.2403" x2="-1.2115" y2="4.2419" width="0.01" layer="51"/>
<wire x1="-1.2095" y1="4.2396" x2="-1.2101" y2="4.2403" width="0.01" layer="51"/>
<wire x1="-1.2089" y1="4.2388" x2="-1.2095" y2="4.2396" width="0.01" layer="51"/>
<wire x1="-1.2077" y1="4.2373" x2="-1.2089" y2="4.2388" width="0.01" layer="51"/>
<wire x1="-1.2066" y1="4.2358" x2="-1.2077" y2="4.2373" width="0.01" layer="51"/>
<wire x1="-1.2056" y1="4.2342" x2="-1.2066" y2="4.2358" width="0.01" layer="51"/>
<wire x1="-1.2038" y1="4.2312" x2="-1.2056" y2="4.2342" width="0.01" layer="51"/>
<wire x1="-1.2034" y1="4.2304" x2="-1.2038" y2="4.2312" width="0.01" layer="51"/>
<wire x1="-1.2031" y1="4.2296" x2="-1.2034" y2="4.2304" width="0.01" layer="51"/>
<wire x1="-1.2024" y1="4.2281" x2="-1.2031" y2="4.2296" width="0.01" layer="51"/>
<wire x1="-1.2018" y1="4.2265" x2="-1.2024" y2="4.2281" width="0.01" layer="51"/>
<wire x1="-1.2013" y1="4.225" x2="-1.2018" y2="4.2265" width="0.01" layer="51"/>
<wire x1="-1.2005" y1="4.2218" x2="-1.2013" y2="4.225" width="0.01" layer="51"/>
<wire x1="-1.2004" y1="4.2211" x2="-1.2005" y2="4.2218" width="0.01" layer="51"/>
<wire x1="-1.2001" y1="4.2187" x2="-1.2004" y2="4.2211" width="0.01" layer="51"/>
<wire x1="-1.2" y1="4.2172" x2="-1.2001" y2="4.2187" width="0.01" layer="51"/>
<wire x1="-1.2" y1="4.1628" x2="-1.2" y2="4.2172" width="0.01" layer="51"/>
<wire x1="-1.2" y1="4.1628" x2="-4" y2="4.1628" width="0.01" layer="51"/>
<wire x1="-1.2" y1="3.2128" x2="-1.2" y2="3.9084" width="0.01" layer="51"/>
<wire x1="-1.2" y1="3.9084" x2="-1.2" y2="3.9628" width="0.01" layer="51"/>
<wire x1="-1.2" y1="3.9628" x2="-1.2" y2="4.1628" width="0.01" layer="51"/>
<wire x1="-1.2001" y1="3.9069" x2="-1.2" y2="3.9084" width="0.01" layer="51"/>
<wire x1="-1.2004" y1="3.9045" x2="-1.2001" y2="3.9069" width="0.01" layer="51"/>
<wire x1="-1.2005" y1="3.9038" x2="-1.2004" y2="3.9045" width="0.01" layer="51"/>
<wire x1="-1.2013" y1="3.9006" x2="-1.2005" y2="3.9038" width="0.01" layer="51"/>
<wire x1="-1.2018" y1="3.8991" x2="-1.2013" y2="3.9006" width="0.01" layer="51"/>
<wire x1="-1.2024" y1="3.8975" x2="-1.2018" y2="3.8991" width="0.01" layer="51"/>
<wire x1="-1.2031" y1="3.896" x2="-1.2024" y2="3.8975" width="0.01" layer="51"/>
<wire x1="-1.2034" y1="3.8952" x2="-1.2031" y2="3.896" width="0.01" layer="51"/>
<wire x1="-1.2038" y1="3.8944" x2="-1.2034" y2="3.8952" width="0.01" layer="51"/>
<wire x1="-1.2056" y1="3.8914" x2="-1.2038" y2="3.8944" width="0.01" layer="51"/>
<wire x1="-1.2066" y1="3.8898" x2="-1.2056" y2="3.8914" width="0.01" layer="51"/>
<wire x1="-1.2077" y1="3.8883" x2="-1.2066" y2="3.8898" width="0.01" layer="51"/>
<wire x1="-1.2089" y1="3.8868" x2="-1.2077" y2="3.8883" width="0.01" layer="51"/>
<wire x1="-1.2095" y1="3.886" x2="-1.2089" y2="3.8868" width="0.01" layer="51"/>
<wire x1="-1.2101" y1="3.8853" x2="-1.2095" y2="3.886" width="0.01" layer="51"/>
<wire x1="-1.2115" y1="3.8837" x2="-1.2101" y2="3.8853" width="0.01" layer="51"/>
<wire x1="-1.2129" y1="3.8822" x2="-1.2115" y2="3.8837" width="0.01" layer="51"/>
<wire x1="-1.2144" y1="3.8807" x2="-1.2129" y2="3.8822" width="0.01" layer="51"/>
<wire x1="-1.2176" y1="3.8777" x2="-1.2144" y2="3.8807" width="0.01" layer="51"/>
<wire x1="-1.2185" y1="3.877" x2="-1.2176" y2="3.8777" width="0.01" layer="51"/>
<wire x1="-1.2194" y1="3.8762" x2="-1.2185" y2="3.877" width="0.01" layer="51"/>
<wire x1="-1.2212" y1="3.8748" x2="-1.2194" y2="3.8762" width="0.01" layer="51"/>
<wire x1="-1.2231" y1="3.8733" x2="-1.2212" y2="3.8748" width="0.01" layer="51"/>
<wire x1="-1.2251" y1="3.8718" x2="-1.2231" y2="3.8733" width="0.01" layer="51"/>
<wire x1="-1.2272" y1="3.8704" x2="-1.2251" y2="3.8718" width="0.01" layer="51"/>
<wire x1="-1.2293" y1="3.8689" x2="-1.2272" y2="3.8704" width="0.01" layer="51"/>
<wire x1="-1.2304" y1="3.8682" x2="-1.2293" y2="3.8689" width="0.01" layer="51"/>
<wire x1="-1.2316" y1="3.8675" x2="-1.2304" y2="3.8682" width="0.01" layer="51"/>
<wire x1="-1.2339" y1="3.866" x2="-1.2316" y2="3.8675" width="0.01" layer="51"/>
<wire x1="-1.2387" y1="3.8632" x2="-1.2339" y2="3.866" width="0.01" layer="51"/>
<wire x1="-1.2465" y1="3.859" x2="-1.2387" y2="3.8632" width="0.01" layer="51"/>
<wire x1="-1.2493" y1="3.8577" x2="-1.2465" y2="3.859" width="0.01" layer="51"/>
<wire x1="-1.2521" y1="3.8563" x2="-1.2493" y2="3.8577" width="0.01" layer="51"/>
<wire x1="-1.2551" y1="3.8549" x2="-1.2521" y2="3.8563" width="0.01" layer="51"/>
<wire x1="-1.258" y1="3.8536" x2="-1.2551" y2="3.8549" width="0.01" layer="51"/>
<wire x1="-1.2611" y1="3.8523" x2="-1.258" y2="3.8536" width="0.01" layer="51"/>
<wire x1="-1.2626" y1="3.8516" x2="-1.2611" y2="3.8523" width="0.01" layer="51"/>
<wire x1="-1.2642" y1="3.851" x2="-1.2626" y2="3.8516" width="0.01" layer="51"/>
<wire x1="-1.2674" y1="3.8497" x2="-1.2642" y2="3.851" width="0.01" layer="51"/>
<wire x1="-1.274" y1="3.8471" x2="-1.2674" y2="3.8497" width="0.01" layer="51"/>
<wire x1="-1.2774" y1="3.8458" x2="-1.274" y2="3.8471" width="0.01" layer="51"/>
<wire x1="-1.2809" y1="3.8446" x2="-1.2774" y2="3.8458" width="0.01" layer="51"/>
<wire x1="-1.2827" y1="3.844" x2="-1.2809" y2="3.8446" width="0.01" layer="51"/>
<wire x1="-1.2844" y1="3.8433" x2="-1.2827" y2="3.844" width="0.01" layer="51"/>
<wire x1="-1.288" y1="3.8421" x2="-1.2844" y2="3.8433" width="0.01" layer="51"/>
<wire x1="-1.2917" y1="3.8409" x2="-1.288" y2="3.8421" width="0.01" layer="51"/>
<wire x1="-1.2993" y1="3.8385" x2="-1.2917" y2="3.8409" width="0.01" layer="51"/>
<wire x1="-1.3031" y1="3.8374" x2="-1.2993" y2="3.8385" width="0.01" layer="51"/>
<wire x1="-1.3071" y1="3.8362" x2="-1.3031" y2="3.8374" width="0.01" layer="51"/>
<wire x1="-1.3151" y1="3.834" x2="-1.3071" y2="3.8362" width="0.01" layer="51"/>
<wire x1="-1.3172" y1="3.8334" x2="-1.3151" y2="3.834" width="0.01" layer="51"/>
<wire x1="-1.3192" y1="3.8329" x2="-1.3172" y2="3.8334" width="0.01" layer="51"/>
<wire x1="-1.3276" y1="3.8307" x2="-1.3192" y2="3.8329" width="0.01" layer="51"/>
<wire x1="-1.3298" y1="3.8302" x2="-1.3276" y2="3.8307" width="0.01" layer="51"/>
<wire x1="-1.3319" y1="3.8297" x2="-1.3298" y2="3.8302" width="0.01" layer="51"/>
<wire x1="-1.3363" y1="3.8286" x2="-1.3319" y2="3.8297" width="0.01" layer="51"/>
<wire x1="-1.3451" y1="3.8266" x2="-1.3363" y2="3.8286" width="0.01" layer="51"/>
<wire x1="-1.3496" y1="3.8256" x2="-1.3451" y2="3.8266" width="0.01" layer="51"/>
<wire x1="-1.3542" y1="3.8247" x2="-1.3496" y2="3.8256" width="0.01" layer="51"/>
<wire x1="-1.3588" y1="3.8237" x2="-1.3542" y2="3.8247" width="0.01" layer="51"/>
<wire x1="-1.3682" y1="3.8219" x2="-1.3588" y2="3.8237" width="0.01" layer="51"/>
<wire x1="-1.3826" y1="3.8192" x2="-1.3682" y2="3.8219" width="0.01" layer="51"/>
<wire x1="-1.3851" y1="3.8188" x2="-1.3826" y2="3.8192" width="0.01" layer="51"/>
<wire x1="-1.3875" y1="3.8184" x2="-1.3851" y2="3.8188" width="0.01" layer="51"/>
<wire x1="-1.4025" y1="3.816" x2="-1.3875" y2="3.8184" width="0.01" layer="51"/>
<wire x1="-1.4076" y1="3.8152" x2="-1.4025" y2="3.816" width="0.01" layer="51"/>
<wire x1="-1.4127" y1="3.8145" x2="-1.4076" y2="3.8152" width="0.01" layer="51"/>
<wire x1="-1.4153" y1="3.8141" x2="-1.4127" y2="3.8145" width="0.01" layer="51"/>
<wire x1="-1.4179" y1="3.8138" x2="-1.4153" y2="3.8141" width="0.01" layer="51"/>
<wire x1="-1.4283" y1="3.8124" x2="-1.4179" y2="3.8138" width="0.01" layer="51"/>
<wire x1="-1.4336" y1="3.8117" x2="-1.4283" y2="3.8124" width="0.01" layer="51"/>
<wire x1="-1.4442" y1="3.8105" x2="-1.4336" y2="3.8117" width="0.01" layer="51"/>
<wire x1="-1.455" y1="3.8093" x2="-1.4442" y2="3.8105" width="0.01" layer="51"/>
<wire x1="-1.4605" y1="3.8088" x2="-1.455" y2="3.8093" width="0.01" layer="51"/>
<wire x1="-1.4659" y1="3.8082" x2="-1.4605" y2="3.8088" width="0.01" layer="51"/>
<wire x1="-1.4769" y1="3.8072" x2="-1.4659" y2="3.8082" width="0.01" layer="51"/>
<wire x1="-1.4825" y1="3.8068" x2="-1.4769" y2="3.8072" width="0.01" layer="51"/>
<wire x1="-1.4881" y1="3.8063" x2="-1.4825" y2="3.8068" width="0.01" layer="51"/>
<wire x1="-1.5049" y1="3.8051" x2="-1.4881" y2="3.8063" width="0.01" layer="51"/>
<wire x1="-1.5106" y1="3.8047" x2="-1.5049" y2="3.8051" width="0.01" layer="51"/>
<wire x1="-1.5134" y1="3.8046" x2="-1.5106" y2="3.8047" width="0.01" layer="51"/>
<wire x1="-1.5163" y1="3.8044" x2="-1.5134" y2="3.8046" width="0.01" layer="51"/>
<wire x1="-1.5334" y1="3.8035" x2="-1.5163" y2="3.8044" width="0.01" layer="51"/>
<wire x1="-1.5392" y1="3.8033" x2="-1.5334" y2="3.8035" width="0.01" layer="51"/>
<wire x1="-1.5449" y1="3.8031" x2="-1.5392" y2="3.8033" width="0.01" layer="51"/>
<wire x1="-1.5478" y1="3.8029" x2="-1.5449" y2="3.8031" width="0.01" layer="51"/>
<wire x1="-1.5507" y1="3.8028" x2="-1.5478" y2="3.8029" width="0.01" layer="51"/>
<wire x1="-1.5565" y1="3.8027" x2="-1.5507" y2="3.8028" width="0.01" layer="51"/>
<wire x1="-1.5622" y1="3.8025" x2="-1.5565" y2="3.8027" width="0.01" layer="51"/>
<wire x1="-1.5796" y1="3.8022" x2="-1.5622" y2="3.8025" width="0.01" layer="51"/>
<wire x1="-1.5826" y1="3.8021" x2="-1.5796" y2="3.8022" width="0.01" layer="51"/>
<wire x1="-1.5913" y1="3.8021" x2="-1.5826" y2="3.8021" width="0.01" layer="51"/>
<wire x1="-1.5971" y1="3.802" x2="-1.5913" y2="3.8021" width="0.01" layer="51"/>
<wire x1="-1.6" y1="3.802" x2="-1.5971" y2="3.802" width="0.01" layer="51"/>
<wire x1="-1.6" y1="3.802" x2="-3.4" y2="3.802" width="0.01" layer="51"/>
<wire x1="-3.4" y1="3.802" x2="-4" y2="3.9628" width="0.01" layer="51"/>
<wire x1="-1.2" y1="3.9628" x2="-4" y2="3.9628" width="0.01" layer="51"/>
<wire x1="-4" y1="-4.2872" x2="-4" y2="-3.5372" width="0.01" layer="51"/>
<wire x1="-4" y1="-3.5372" x2="-4" y2="-3.3372" width="0.01" layer="51"/>
<wire x1="-4" y1="-3.3372" x2="-4" y2="-2.5872" width="0.01" layer="51"/>
<wire x1="-3.4" y1="-4.2872" x2="-3.4" y2="-3.698" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-4.2872" x2="-1.6" y2="-4.2872" width="0.01" layer="51"/>
<wire x1="-1.6" y1="-4.2872" x2="-4" y2="-4.2872" width="0.01" layer="51"/>
<wire x1="-1.6" y1="-4.2872" x2="-1.6" y2="-3.698" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-3.2828" x2="-1.2" y2="-2.5872" width="0.01" layer="51"/>
<wire x1="-4" y1="-3.3372" x2="-3.4" y2="-3.1764" width="0.01" layer="51"/>
<wire x1="-3.4" y1="-3.1764" x2="-1.6" y2="-3.1764" width="0.01" layer="51"/>
<wire x1="-1.5971" y1="-3.1764" x2="-1.6" y2="-3.1764" width="0.01" layer="51"/>
<wire x1="-1.5913" y1="-3.1765" x2="-1.5971" y2="-3.1764" width="0.01" layer="51"/>
<wire x1="-1.5826" y1="-3.1765" x2="-1.5913" y2="-3.1765" width="0.01" layer="51"/>
<wire x1="-1.5796" y1="-3.1766" x2="-1.5826" y2="-3.1765" width="0.01" layer="51"/>
<wire x1="-1.5622" y1="-3.1769" x2="-1.5796" y2="-3.1766" width="0.01" layer="51"/>
<wire x1="-1.5565" y1="-3.1771" x2="-1.5622" y2="-3.1769" width="0.01" layer="51"/>
<wire x1="-1.5507" y1="-3.1772" x2="-1.5565" y2="-3.1771" width="0.01" layer="51"/>
<wire x1="-1.5478" y1="-3.1773" x2="-1.5507" y2="-3.1772" width="0.01" layer="51"/>
<wire x1="-1.5449" y1="-3.1775" x2="-1.5478" y2="-3.1773" width="0.01" layer="51"/>
<wire x1="-1.5392" y1="-3.1777" x2="-1.5449" y2="-3.1775" width="0.01" layer="51"/>
<wire x1="-1.5334" y1="-3.1779" x2="-1.5392" y2="-3.1777" width="0.01" layer="51"/>
<wire x1="-1.5163" y1="-3.1788" x2="-1.5334" y2="-3.1779" width="0.01" layer="51"/>
<wire x1="-1.5134" y1="-3.179" x2="-1.5163" y2="-3.1788" width="0.01" layer="51"/>
<wire x1="-1.5106" y1="-3.1791" x2="-1.5134" y2="-3.179" width="0.01" layer="51"/>
<wire x1="-1.5049" y1="-3.1795" x2="-1.5106" y2="-3.1791" width="0.01" layer="51"/>
<wire x1="-1.4881" y1="-3.1807" x2="-1.5049" y2="-3.1795" width="0.01" layer="51"/>
<wire x1="-1.4825" y1="-3.1812" x2="-1.4881" y2="-3.1807" width="0.01" layer="51"/>
<wire x1="-1.4769" y1="-3.1816" x2="-1.4825" y2="-3.1812" width="0.01" layer="51"/>
<wire x1="-1.4659" y1="-3.1826" x2="-1.4769" y2="-3.1816" width="0.01" layer="51"/>
<wire x1="-1.4605" y1="-3.1832" x2="-1.4659" y2="-3.1826" width="0.01" layer="51"/>
<wire x1="-1.455" y1="-3.1837" x2="-1.4605" y2="-3.1832" width="0.01" layer="51"/>
<wire x1="-1.4442" y1="-3.1849" x2="-1.455" y2="-3.1837" width="0.01" layer="51"/>
<wire x1="-1.4336" y1="-3.1861" x2="-1.4442" y2="-3.1849" width="0.01" layer="51"/>
<wire x1="-1.4283" y1="-3.1868" x2="-1.4336" y2="-3.1861" width="0.01" layer="51"/>
<wire x1="-1.4179" y1="-3.1882" x2="-1.4283" y2="-3.1868" width="0.01" layer="51"/>
<wire x1="-1.4153" y1="-3.1885" x2="-1.4179" y2="-3.1882" width="0.01" layer="51"/>
<wire x1="-1.4127" y1="-3.1889" x2="-1.4153" y2="-3.1885" width="0.01" layer="51"/>
<wire x1="-1.4076" y1="-3.1896" x2="-1.4127" y2="-3.1889" width="0.01" layer="51"/>
<wire x1="-1.4025" y1="-3.1904" x2="-1.4076" y2="-3.1896" width="0.01" layer="51"/>
<wire x1="-1.3875" y1="-3.1928" x2="-1.4025" y2="-3.1904" width="0.01" layer="51"/>
<wire x1="-1.3851" y1="-3.1932" x2="-1.3875" y2="-3.1928" width="0.01" layer="51"/>
<wire x1="-1.3826" y1="-3.1936" x2="-1.3851" y2="-3.1932" width="0.01" layer="51"/>
<wire x1="-1.3682" y1="-3.1963" x2="-1.3826" y2="-3.1936" width="0.01" layer="51"/>
<wire x1="-1.3588" y1="-3.1981" x2="-1.3682" y2="-3.1963" width="0.01" layer="51"/>
<wire x1="-1.3542" y1="-3.1991" x2="-1.3588" y2="-3.1981" width="0.01" layer="51"/>
<wire x1="-1.3496" y1="-3.2" x2="-1.3542" y2="-3.1991" width="0.01" layer="51"/>
<wire x1="-1.3451" y1="-3.201" x2="-1.3496" y2="-3.2" width="0.01" layer="51"/>
<wire x1="-1.3363" y1="-3.203" x2="-1.3451" y2="-3.201" width="0.01" layer="51"/>
<wire x1="-1.3319" y1="-3.2041" x2="-1.3363" y2="-3.203" width="0.01" layer="51"/>
<wire x1="-1.3298" y1="-3.2046" x2="-1.3319" y2="-3.2041" width="0.01" layer="51"/>
<wire x1="-1.3276" y1="-3.2051" x2="-1.3298" y2="-3.2046" width="0.01" layer="51"/>
<wire x1="-1.3192" y1="-3.2073" x2="-1.3276" y2="-3.2051" width="0.01" layer="51"/>
<wire x1="-1.3172" y1="-3.2078" x2="-1.3192" y2="-3.2073" width="0.01" layer="51"/>
<wire x1="-1.3151" y1="-3.2084" x2="-1.3172" y2="-3.2078" width="0.01" layer="51"/>
<wire x1="-1.3071" y1="-3.2106" x2="-1.3151" y2="-3.2084" width="0.01" layer="51"/>
<wire x1="-1.3031" y1="-3.2118" x2="-1.3071" y2="-3.2106" width="0.01" layer="51"/>
<wire x1="-1.2993" y1="-3.2129" x2="-1.3031" y2="-3.2118" width="0.01" layer="51"/>
<wire x1="-1.2917" y1="-3.2153" x2="-1.2993" y2="-3.2129" width="0.01" layer="51"/>
<wire x1="-1.288" y1="-3.2165" x2="-1.2917" y2="-3.2153" width="0.01" layer="51"/>
<wire x1="-1.2844" y1="-3.2177" x2="-1.288" y2="-3.2165" width="0.01" layer="51"/>
<wire x1="-1.2827" y1="-3.2184" x2="-1.2844" y2="-3.2177" width="0.01" layer="51"/>
<wire x1="-1.2809" y1="-3.219" x2="-1.2827" y2="-3.2184" width="0.01" layer="51"/>
<wire x1="-1.2774" y1="-3.2202" x2="-1.2809" y2="-3.219" width="0.01" layer="51"/>
<wire x1="-1.274" y1="-3.2215" x2="-1.2774" y2="-3.2202" width="0.01" layer="51"/>
<wire x1="-1.2674" y1="-3.2241" x2="-1.274" y2="-3.2215" width="0.01" layer="51"/>
<wire x1="-1.2642" y1="-3.2254" x2="-1.2674" y2="-3.2241" width="0.01" layer="51"/>
<wire x1="-1.2626" y1="-3.226" x2="-1.2642" y2="-3.2254" width="0.01" layer="51"/>
<wire x1="-1.2611" y1="-3.2267" x2="-1.2626" y2="-3.226" width="0.01" layer="51"/>
<wire x1="-1.258" y1="-3.228" x2="-1.2611" y2="-3.2267" width="0.01" layer="51"/>
<wire x1="-1.2551" y1="-3.2293" x2="-1.258" y2="-3.228" width="0.01" layer="51"/>
<wire x1="-1.2521" y1="-3.2307" x2="-1.2551" y2="-3.2293" width="0.01" layer="51"/>
<wire x1="-1.2493" y1="-3.2321" x2="-1.2521" y2="-3.2307" width="0.01" layer="51"/>
<wire x1="-1.2465" y1="-3.2334" x2="-1.2493" y2="-3.2321" width="0.01" layer="51"/>
<wire x1="-1.2387" y1="-3.2376" x2="-1.2465" y2="-3.2334" width="0.01" layer="51"/>
<wire x1="-1.2339" y1="-3.2404" x2="-1.2387" y2="-3.2376" width="0.01" layer="51"/>
<wire x1="-1.2316" y1="-3.2419" x2="-1.2339" y2="-3.2404" width="0.01" layer="51"/>
<wire x1="-1.2304" y1="-3.2426" x2="-1.2316" y2="-3.2419" width="0.01" layer="51"/>
<wire x1="-1.2293" y1="-3.2433" x2="-1.2304" y2="-3.2426" width="0.01" layer="51"/>
<wire x1="-1.2272" y1="-3.2448" x2="-1.2293" y2="-3.2433" width="0.01" layer="51"/>
<wire x1="-1.2251" y1="-3.2462" x2="-1.2272" y2="-3.2448" width="0.01" layer="51"/>
<wire x1="-1.2231" y1="-3.2477" x2="-1.2251" y2="-3.2462" width="0.01" layer="51"/>
<wire x1="-1.2212" y1="-3.2492" x2="-1.2231" y2="-3.2477" width="0.01" layer="51"/>
<wire x1="-1.2194" y1="-3.2506" x2="-1.2212" y2="-3.2492" width="0.01" layer="51"/>
<wire x1="-1.2185" y1="-3.2514" x2="-1.2194" y2="-3.2506" width="0.01" layer="51"/>
<wire x1="-1.2176" y1="-3.2521" x2="-1.2185" y2="-3.2514" width="0.01" layer="51"/>
<wire x1="-1.2144" y1="-3.2551" x2="-1.2176" y2="-3.2521" width="0.01" layer="51"/>
<wire x1="-1.2129" y1="-3.2566" x2="-1.2144" y2="-3.2551" width="0.01" layer="51"/>
<wire x1="-1.2115" y1="-3.2581" x2="-1.2129" y2="-3.2566" width="0.01" layer="51"/>
<wire x1="-1.2101" y1="-3.2597" x2="-1.2115" y2="-3.2581" width="0.01" layer="51"/>
<wire x1="-1.2095" y1="-3.2604" x2="-1.2101" y2="-3.2597" width="0.01" layer="51"/>
<wire x1="-1.2089" y1="-3.2612" x2="-1.2095" y2="-3.2604" width="0.01" layer="51"/>
<wire x1="-1.2077" y1="-3.2627" x2="-1.2089" y2="-3.2612" width="0.01" layer="51"/>
<wire x1="-1.2066" y1="-3.2642" x2="-1.2077" y2="-3.2627" width="0.01" layer="51"/>
<wire x1="-1.2056" y1="-3.2658" x2="-1.2066" y2="-3.2642" width="0.01" layer="51"/>
<wire x1="-1.2038" y1="-3.2688" x2="-1.2056" y2="-3.2658" width="0.01" layer="51"/>
<wire x1="-1.2034" y1="-3.2696" x2="-1.2038" y2="-3.2688" width="0.01" layer="51"/>
<wire x1="-1.2031" y1="-3.2704" x2="-1.2034" y2="-3.2696" width="0.01" layer="51"/>
<wire x1="-1.2024" y1="-3.2719" x2="-1.2031" y2="-3.2704" width="0.01" layer="51"/>
<wire x1="-1.2018" y1="-3.2735" x2="-1.2024" y2="-3.2719" width="0.01" layer="51"/>
<wire x1="-1.2013" y1="-3.275" x2="-1.2018" y2="-3.2735" width="0.01" layer="51"/>
<wire x1="-1.2005" y1="-3.2782" x2="-1.2013" y2="-3.275" width="0.01" layer="51"/>
<wire x1="-1.2004" y1="-3.2789" x2="-1.2005" y2="-3.2782" width="0.01" layer="51"/>
<wire x1="-1.2001" y1="-3.2813" x2="-1.2004" y2="-3.2789" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-3.2828" x2="-1.2001" y2="-3.2813" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-3.3372" x2="-1.2" y2="-3.2828" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-3.3372" x2="-4" y2="-3.3372" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-4.2872" x2="-1.2" y2="-3.5916" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-3.5916" x2="-1.2" y2="-3.5372" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-3.5372" x2="-1.2" y2="-3.3372" width="0.01" layer="51"/>
<wire x1="-1.2001" y1="-3.5931" x2="-1.2" y2="-3.5916" width="0.01" layer="51"/>
<wire x1="-1.2004" y1="-3.5955" x2="-1.2001" y2="-3.5931" width="0.01" layer="51"/>
<wire x1="-1.2005" y1="-3.5962" x2="-1.2004" y2="-3.5955" width="0.01" layer="51"/>
<wire x1="-1.2013" y1="-3.5994" x2="-1.2005" y2="-3.5962" width="0.01" layer="51"/>
<wire x1="-1.2018" y1="-3.6009" x2="-1.2013" y2="-3.5994" width="0.01" layer="51"/>
<wire x1="-1.2024" y1="-3.6025" x2="-1.2018" y2="-3.6009" width="0.01" layer="51"/>
<wire x1="-1.2031" y1="-3.604" x2="-1.2024" y2="-3.6025" width="0.01" layer="51"/>
<wire x1="-1.2034" y1="-3.6048" x2="-1.2031" y2="-3.604" width="0.01" layer="51"/>
<wire x1="-1.2038" y1="-3.6056" x2="-1.2034" y2="-3.6048" width="0.01" layer="51"/>
<wire x1="-1.2056" y1="-3.6086" x2="-1.2038" y2="-3.6056" width="0.01" layer="51"/>
<wire x1="-1.2066" y1="-3.6102" x2="-1.2056" y2="-3.6086" width="0.01" layer="51"/>
<wire x1="-1.2077" y1="-3.6117" x2="-1.2066" y2="-3.6102" width="0.01" layer="51"/>
<wire x1="-1.2089" y1="-3.6132" x2="-1.2077" y2="-3.6117" width="0.01" layer="51"/>
<wire x1="-1.2095" y1="-3.614" x2="-1.2089" y2="-3.6132" width="0.01" layer="51"/>
<wire x1="-1.2101" y1="-3.6147" x2="-1.2095" y2="-3.614" width="0.01" layer="51"/>
<wire x1="-1.2115" y1="-3.6163" x2="-1.2101" y2="-3.6147" width="0.01" layer="51"/>
<wire x1="-1.2129" y1="-3.6178" x2="-1.2115" y2="-3.6163" width="0.01" layer="51"/>
<wire x1="-1.2144" y1="-3.6193" x2="-1.2129" y2="-3.6178" width="0.01" layer="51"/>
<wire x1="-1.2176" y1="-3.6223" x2="-1.2144" y2="-3.6193" width="0.01" layer="51"/>
<wire x1="-1.2185" y1="-3.623" x2="-1.2176" y2="-3.6223" width="0.01" layer="51"/>
<wire x1="-1.2194" y1="-3.6238" x2="-1.2185" y2="-3.623" width="0.01" layer="51"/>
<wire x1="-1.2212" y1="-3.6252" x2="-1.2194" y2="-3.6238" width="0.01" layer="51"/>
<wire x1="-1.2231" y1="-3.6267" x2="-1.2212" y2="-3.6252" width="0.01" layer="51"/>
<wire x1="-1.2251" y1="-3.6282" x2="-1.2231" y2="-3.6267" width="0.01" layer="51"/>
<wire x1="-1.2272" y1="-3.6296" x2="-1.2251" y2="-3.6282" width="0.01" layer="51"/>
<wire x1="-1.2293" y1="-3.6311" x2="-1.2272" y2="-3.6296" width="0.01" layer="51"/>
<wire x1="-1.2304" y1="-3.6318" x2="-1.2293" y2="-3.6311" width="0.01" layer="51"/>
<wire x1="-1.2316" y1="-3.6325" x2="-1.2304" y2="-3.6318" width="0.01" layer="51"/>
<wire x1="-1.2339" y1="-3.634" x2="-1.2316" y2="-3.6325" width="0.01" layer="51"/>
<wire x1="-1.2387" y1="-3.6368" x2="-1.2339" y2="-3.634" width="0.01" layer="51"/>
<wire x1="-1.2465" y1="-3.641" x2="-1.2387" y2="-3.6368" width="0.01" layer="51"/>
<wire x1="-1.2493" y1="-3.6423" x2="-1.2465" y2="-3.641" width="0.01" layer="51"/>
<wire x1="-1.2521" y1="-3.6437" x2="-1.2493" y2="-3.6423" width="0.01" layer="51"/>
<wire x1="-1.2551" y1="-3.6451" x2="-1.2521" y2="-3.6437" width="0.01" layer="51"/>
<wire x1="-1.258" y1="-3.6464" x2="-1.2551" y2="-3.6451" width="0.01" layer="51"/>
<wire x1="-1.2611" y1="-3.6477" x2="-1.258" y2="-3.6464" width="0.01" layer="51"/>
<wire x1="-1.2626" y1="-3.6484" x2="-1.2611" y2="-3.6477" width="0.01" layer="51"/>
<wire x1="-1.2642" y1="-3.649" x2="-1.2626" y2="-3.6484" width="0.01" layer="51"/>
<wire x1="-1.2674" y1="-3.6503" x2="-1.2642" y2="-3.649" width="0.01" layer="51"/>
<wire x1="-1.274" y1="-3.6529" x2="-1.2674" y2="-3.6503" width="0.01" layer="51"/>
<wire x1="-1.2774" y1="-3.6542" x2="-1.274" y2="-3.6529" width="0.01" layer="51"/>
<wire x1="-1.2809" y1="-3.6554" x2="-1.2774" y2="-3.6542" width="0.01" layer="51"/>
<wire x1="-1.2827" y1="-3.656" x2="-1.2809" y2="-3.6554" width="0.01" layer="51"/>
<wire x1="-1.2844" y1="-3.6567" x2="-1.2827" y2="-3.656" width="0.01" layer="51"/>
<wire x1="-1.288" y1="-3.6579" x2="-1.2844" y2="-3.6567" width="0.01" layer="51"/>
<wire x1="-1.2917" y1="-3.6591" x2="-1.288" y2="-3.6579" width="0.01" layer="51"/>
<wire x1="-1.2993" y1="-3.6615" x2="-1.2917" y2="-3.6591" width="0.01" layer="51"/>
<wire x1="-1.3031" y1="-3.6626" x2="-1.2993" y2="-3.6615" width="0.01" layer="51"/>
<wire x1="-1.3071" y1="-3.6638" x2="-1.3031" y2="-3.6626" width="0.01" layer="51"/>
<wire x1="-1.3151" y1="-3.666" x2="-1.3071" y2="-3.6638" width="0.01" layer="51"/>
<wire x1="-1.3172" y1="-3.6666" x2="-1.3151" y2="-3.666" width="0.01" layer="51"/>
<wire x1="-1.3192" y1="-3.6671" x2="-1.3172" y2="-3.6666" width="0.01" layer="51"/>
<wire x1="-1.3276" y1="-3.6693" x2="-1.3192" y2="-3.6671" width="0.01" layer="51"/>
<wire x1="-1.3298" y1="-3.6698" x2="-1.3276" y2="-3.6693" width="0.01" layer="51"/>
<wire x1="-1.3319" y1="-3.6703" x2="-1.3298" y2="-3.6698" width="0.01" layer="51"/>
<wire x1="-1.3363" y1="-3.6714" x2="-1.3319" y2="-3.6703" width="0.01" layer="51"/>
<wire x1="-1.3451" y1="-3.6734" x2="-1.3363" y2="-3.6714" width="0.01" layer="51"/>
<wire x1="-1.3496" y1="-3.6744" x2="-1.3451" y2="-3.6734" width="0.01" layer="51"/>
<wire x1="-1.3542" y1="-3.6753" x2="-1.3496" y2="-3.6744" width="0.01" layer="51"/>
<wire x1="-1.3588" y1="-3.6763" x2="-1.3542" y2="-3.6753" width="0.01" layer="51"/>
<wire x1="-1.3682" y1="-3.6781" x2="-1.3588" y2="-3.6763" width="0.01" layer="51"/>
<wire x1="-1.3826" y1="-3.6808" x2="-1.3682" y2="-3.6781" width="0.01" layer="51"/>
<wire x1="-1.3851" y1="-3.6812" x2="-1.3826" y2="-3.6808" width="0.01" layer="51"/>
<wire x1="-1.3875" y1="-3.6816" x2="-1.3851" y2="-3.6812" width="0.01" layer="51"/>
<wire x1="-1.4025" y1="-3.684" x2="-1.3875" y2="-3.6816" width="0.01" layer="51"/>
<wire x1="-1.4076" y1="-3.6848" x2="-1.4025" y2="-3.684" width="0.01" layer="51"/>
<wire x1="-1.4127" y1="-3.6855" x2="-1.4076" y2="-3.6848" width="0.01" layer="51"/>
<wire x1="-1.4153" y1="-3.6859" x2="-1.4127" y2="-3.6855" width="0.01" layer="51"/>
<wire x1="-1.4179" y1="-3.6862" x2="-1.4153" y2="-3.6859" width="0.01" layer="51"/>
<wire x1="-1.4283" y1="-3.6876" x2="-1.4179" y2="-3.6862" width="0.01" layer="51"/>
<wire x1="-1.4336" y1="-3.6883" x2="-1.4283" y2="-3.6876" width="0.01" layer="51"/>
<wire x1="-1.4442" y1="-3.6895" x2="-1.4336" y2="-3.6883" width="0.01" layer="51"/>
<wire x1="-1.455" y1="-3.6907" x2="-1.4442" y2="-3.6895" width="0.01" layer="51"/>
<wire x1="-1.4605" y1="-3.6912" x2="-1.455" y2="-3.6907" width="0.01" layer="51"/>
<wire x1="-1.4659" y1="-3.6918" x2="-1.4605" y2="-3.6912" width="0.01" layer="51"/>
<wire x1="-1.4769" y1="-3.6928" x2="-1.4659" y2="-3.6918" width="0.01" layer="51"/>
<wire x1="-1.4825" y1="-3.6932" x2="-1.4769" y2="-3.6928" width="0.01" layer="51"/>
<wire x1="-1.4881" y1="-3.6937" x2="-1.4825" y2="-3.6932" width="0.01" layer="51"/>
<wire x1="-1.5049" y1="-3.6949" x2="-1.4881" y2="-3.6937" width="0.01" layer="51"/>
<wire x1="-1.5106" y1="-3.6953" x2="-1.5049" y2="-3.6949" width="0.01" layer="51"/>
<wire x1="-1.5134" y1="-3.6954" x2="-1.5106" y2="-3.6953" width="0.01" layer="51"/>
<wire x1="-1.5163" y1="-3.6956" x2="-1.5134" y2="-3.6954" width="0.01" layer="51"/>
<wire x1="-1.5334" y1="-3.6965" x2="-1.5163" y2="-3.6956" width="0.01" layer="51"/>
<wire x1="-1.5392" y1="-3.6967" x2="-1.5334" y2="-3.6965" width="0.01" layer="51"/>
<wire x1="-1.5449" y1="-3.6969" x2="-1.5392" y2="-3.6967" width="0.01" layer="51"/>
<wire x1="-1.5478" y1="-3.6971" x2="-1.5449" y2="-3.6969" width="0.01" layer="51"/>
<wire x1="-1.5507" y1="-3.6972" x2="-1.5478" y2="-3.6971" width="0.01" layer="51"/>
<wire x1="-1.5565" y1="-3.6973" x2="-1.5507" y2="-3.6972" width="0.01" layer="51"/>
<wire x1="-1.5622" y1="-3.6975" x2="-1.5565" y2="-3.6973" width="0.01" layer="51"/>
<wire x1="-1.5796" y1="-3.6978" x2="-1.5622" y2="-3.6975" width="0.01" layer="51"/>
<wire x1="-1.5826" y1="-3.6979" x2="-1.5796" y2="-3.6978" width="0.01" layer="51"/>
<wire x1="-1.5913" y1="-3.6979" x2="-1.5826" y2="-3.6979" width="0.01" layer="51"/>
<wire x1="-1.5971" y1="-3.698" x2="-1.5913" y2="-3.6979" width="0.01" layer="51"/>
<wire x1="-1.6" y1="-3.698" x2="-1.5971" y2="-3.698" width="0.01" layer="51"/>
<wire x1="-1.6" y1="-3.698" x2="-3.4" y2="-3.698" width="0.01" layer="51"/>
<wire x1="-3.4" y1="-3.698" x2="-4" y2="-3.5372" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-3.5372" x2="-4" y2="-3.5372" width="0.01" layer="51"/>
<wire x1="-4" y1="-1.7872" x2="-4" y2="-1.0372" width="0.01" layer="51"/>
<wire x1="-4" y1="-1.0372" x2="-4" y2="-0.8372" width="0.01" layer="51"/>
<wire x1="-4" y1="-0.8372" x2="-4" y2="-0.0872" width="0.01" layer="51"/>
<wire x1="-3.4" y1="-1.7872" x2="-3.4" y2="-1.198" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-1.7872" x2="-1.6" y2="-1.7872" width="0.01" layer="51"/>
<wire x1="-1.6" y1="-1.7872" x2="-4" y2="-1.7872" width="0.01" layer="51"/>
<wire x1="-1.6" y1="-1.7872" x2="-1.6" y2="-1.198" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-0.7828" x2="-1.2" y2="-0.0872" width="0.01" layer="51"/>
<wire x1="-4" y1="-0.8372" x2="-3.4" y2="-0.6764" width="0.01" layer="51"/>
<wire x1="-3.4" y1="-0.6764" x2="-1.6" y2="-0.6764" width="0.01" layer="51"/>
<wire x1="-1.5971" y1="-0.6764" x2="-1.6" y2="-0.6764" width="0.01" layer="51"/>
<wire x1="-1.5913" y1="-0.6765" x2="-1.5971" y2="-0.6764" width="0.01" layer="51"/>
<wire x1="-1.5826" y1="-0.6765" x2="-1.5913" y2="-0.6765" width="0.01" layer="51"/>
<wire x1="-1.5796" y1="-0.6766" x2="-1.5826" y2="-0.6765" width="0.01" layer="51"/>
<wire x1="-1.5622" y1="-0.6769" x2="-1.5796" y2="-0.6766" width="0.01" layer="51"/>
<wire x1="-1.5565" y1="-0.6771" x2="-1.5622" y2="-0.6769" width="0.01" layer="51"/>
<wire x1="-1.5507" y1="-0.6772" x2="-1.5565" y2="-0.6771" width="0.01" layer="51"/>
<wire x1="-1.5478" y1="-0.6773" x2="-1.5507" y2="-0.6772" width="0.01" layer="51"/>
<wire x1="-1.5449" y1="-0.6775" x2="-1.5478" y2="-0.6773" width="0.01" layer="51"/>
<wire x1="-1.5392" y1="-0.6777" x2="-1.5449" y2="-0.6775" width="0.01" layer="51"/>
<wire x1="-1.5334" y1="-0.6779" x2="-1.5392" y2="-0.6777" width="0.01" layer="51"/>
<wire x1="-1.5163" y1="-0.6788" x2="-1.5334" y2="-0.6779" width="0.01" layer="51"/>
<wire x1="-1.5134" y1="-0.679" x2="-1.5163" y2="-0.6788" width="0.01" layer="51"/>
<wire x1="-1.5106" y1="-0.6791" x2="-1.5134" y2="-0.679" width="0.01" layer="51"/>
<wire x1="-1.5049" y1="-0.6795" x2="-1.5106" y2="-0.6791" width="0.01" layer="51"/>
<wire x1="-1.4881" y1="-0.6807" x2="-1.5049" y2="-0.6795" width="0.01" layer="51"/>
<wire x1="-1.4825" y1="-0.6812" x2="-1.4881" y2="-0.6807" width="0.01" layer="51"/>
<wire x1="-1.4769" y1="-0.6816" x2="-1.4825" y2="-0.6812" width="0.01" layer="51"/>
<wire x1="-1.4659" y1="-0.6826" x2="-1.4769" y2="-0.6816" width="0.01" layer="51"/>
<wire x1="-1.4605" y1="-0.6832" x2="-1.4659" y2="-0.6826" width="0.01" layer="51"/>
<wire x1="-1.455" y1="-0.6837" x2="-1.4605" y2="-0.6832" width="0.01" layer="51"/>
<wire x1="-1.4442" y1="-0.6849" x2="-1.455" y2="-0.6837" width="0.01" layer="51"/>
<wire x1="-1.4336" y1="-0.6861" x2="-1.4442" y2="-0.6849" width="0.01" layer="51"/>
<wire x1="-1.4283" y1="-0.6868" x2="-1.4336" y2="-0.6861" width="0.01" layer="51"/>
<wire x1="-1.4179" y1="-0.6882" x2="-1.4283" y2="-0.6868" width="0.01" layer="51"/>
<wire x1="-1.4153" y1="-0.6885" x2="-1.4179" y2="-0.6882" width="0.01" layer="51"/>
<wire x1="-1.4127" y1="-0.6889" x2="-1.4153" y2="-0.6885" width="0.01" layer="51"/>
<wire x1="-1.4076" y1="-0.6896" x2="-1.4127" y2="-0.6889" width="0.01" layer="51"/>
<wire x1="-1.4025" y1="-0.6904" x2="-1.4076" y2="-0.6896" width="0.01" layer="51"/>
<wire x1="-1.3875" y1="-0.6928" x2="-1.4025" y2="-0.6904" width="0.01" layer="51"/>
<wire x1="-1.3851" y1="-0.6932" x2="-1.3875" y2="-0.6928" width="0.01" layer="51"/>
<wire x1="-1.3826" y1="-0.6936" x2="-1.3851" y2="-0.6932" width="0.01" layer="51"/>
<wire x1="-1.3682" y1="-0.6963" x2="-1.3826" y2="-0.6936" width="0.01" layer="51"/>
<wire x1="-1.3588" y1="-0.6981" x2="-1.3682" y2="-0.6963" width="0.01" layer="51"/>
<wire x1="-1.3542" y1="-0.6991" x2="-1.3588" y2="-0.6981" width="0.01" layer="51"/>
<wire x1="-1.3496" y1="-0.7" x2="-1.3542" y2="-0.6991" width="0.01" layer="51"/>
<wire x1="-1.3451" y1="-0.701" x2="-1.3496" y2="-0.7" width="0.01" layer="51"/>
<wire x1="-1.3363" y1="-0.703" x2="-1.3451" y2="-0.701" width="0.01" layer="51"/>
<wire x1="-1.3319" y1="-0.7041" x2="-1.3363" y2="-0.703" width="0.01" layer="51"/>
<wire x1="-1.3298" y1="-0.7046" x2="-1.3319" y2="-0.7041" width="0.01" layer="51"/>
<wire x1="-1.3276" y1="-0.7051" x2="-1.3298" y2="-0.7046" width="0.01" layer="51"/>
<wire x1="-1.3192" y1="-0.7073" x2="-1.3276" y2="-0.7051" width="0.01" layer="51"/>
<wire x1="-1.3172" y1="-0.7078" x2="-1.3192" y2="-0.7073" width="0.01" layer="51"/>
<wire x1="-1.3151" y1="-0.7084" x2="-1.3172" y2="-0.7078" width="0.01" layer="51"/>
<wire x1="-1.3071" y1="-0.7106" x2="-1.3151" y2="-0.7084" width="0.01" layer="51"/>
<wire x1="-1.3031" y1="-0.7118" x2="-1.3071" y2="-0.7106" width="0.01" layer="51"/>
<wire x1="-1.2993" y1="-0.7129" x2="-1.3031" y2="-0.7118" width="0.01" layer="51"/>
<wire x1="-1.2917" y1="-0.7153" x2="-1.2993" y2="-0.7129" width="0.01" layer="51"/>
<wire x1="-1.288" y1="-0.7165" x2="-1.2917" y2="-0.7153" width="0.01" layer="51"/>
<wire x1="-1.2844" y1="-0.7177" x2="-1.288" y2="-0.7165" width="0.01" layer="51"/>
<wire x1="-1.2827" y1="-0.7184" x2="-1.2844" y2="-0.7177" width="0.01" layer="51"/>
<wire x1="-1.2809" y1="-0.719" x2="-1.2827" y2="-0.7184" width="0.01" layer="51"/>
<wire x1="-1.2774" y1="-0.7202" x2="-1.2809" y2="-0.719" width="0.01" layer="51"/>
<wire x1="-1.274" y1="-0.7215" x2="-1.2774" y2="-0.7202" width="0.01" layer="51"/>
<wire x1="-1.2674" y1="-0.7241" x2="-1.274" y2="-0.7215" width="0.01" layer="51"/>
<wire x1="-1.2642" y1="-0.7254" x2="-1.2674" y2="-0.7241" width="0.01" layer="51"/>
<wire x1="-1.2626" y1="-0.726" x2="-1.2642" y2="-0.7254" width="0.01" layer="51"/>
<wire x1="-1.2611" y1="-0.7267" x2="-1.2626" y2="-0.726" width="0.01" layer="51"/>
<wire x1="-1.258" y1="-0.728" x2="-1.2611" y2="-0.7267" width="0.01" layer="51"/>
<wire x1="-1.2551" y1="-0.7293" x2="-1.258" y2="-0.728" width="0.01" layer="51"/>
<wire x1="-1.2521" y1="-0.7307" x2="-1.2551" y2="-0.7293" width="0.01" layer="51"/>
<wire x1="-1.2493" y1="-0.7321" x2="-1.2521" y2="-0.7307" width="0.01" layer="51"/>
<wire x1="-1.2465" y1="-0.7334" x2="-1.2493" y2="-0.7321" width="0.01" layer="51"/>
<wire x1="-1.2387" y1="-0.7376" x2="-1.2465" y2="-0.7334" width="0.01" layer="51"/>
<wire x1="-1.2339" y1="-0.7404" x2="-1.2387" y2="-0.7376" width="0.01" layer="51"/>
<wire x1="-1.2316" y1="-0.7419" x2="-1.2339" y2="-0.7404" width="0.01" layer="51"/>
<wire x1="-1.2304" y1="-0.7426" x2="-1.2316" y2="-0.7419" width="0.01" layer="51"/>
<wire x1="-1.2293" y1="-0.7433" x2="-1.2304" y2="-0.7426" width="0.01" layer="51"/>
<wire x1="-1.2272" y1="-0.7448" x2="-1.2293" y2="-0.7433" width="0.01" layer="51"/>
<wire x1="-1.2251" y1="-0.7462" x2="-1.2272" y2="-0.7448" width="0.01" layer="51"/>
<wire x1="-1.2231" y1="-0.7477" x2="-1.2251" y2="-0.7462" width="0.01" layer="51"/>
<wire x1="-1.2212" y1="-0.7492" x2="-1.2231" y2="-0.7477" width="0.01" layer="51"/>
<wire x1="-1.2194" y1="-0.7506" x2="-1.2212" y2="-0.7492" width="0.01" layer="51"/>
<wire x1="-1.2185" y1="-0.7514" x2="-1.2194" y2="-0.7506" width="0.01" layer="51"/>
<wire x1="-1.2176" y1="-0.7521" x2="-1.2185" y2="-0.7514" width="0.01" layer="51"/>
<wire x1="-1.2144" y1="-0.7551" x2="-1.2176" y2="-0.7521" width="0.01" layer="51"/>
<wire x1="-1.2129" y1="-0.7566" x2="-1.2144" y2="-0.7551" width="0.01" layer="51"/>
<wire x1="-1.2115" y1="-0.7581" x2="-1.2129" y2="-0.7566" width="0.01" layer="51"/>
<wire x1="-1.2101" y1="-0.7597" x2="-1.2115" y2="-0.7581" width="0.01" layer="51"/>
<wire x1="-1.2095" y1="-0.7604" x2="-1.2101" y2="-0.7597" width="0.01" layer="51"/>
<wire x1="-1.2089" y1="-0.7612" x2="-1.2095" y2="-0.7604" width="0.01" layer="51"/>
<wire x1="-1.2077" y1="-0.7627" x2="-1.2089" y2="-0.7612" width="0.01" layer="51"/>
<wire x1="-1.2066" y1="-0.7642" x2="-1.2077" y2="-0.7627" width="0.01" layer="51"/>
<wire x1="-1.2056" y1="-0.7658" x2="-1.2066" y2="-0.7642" width="0.01" layer="51"/>
<wire x1="-1.2038" y1="-0.7688" x2="-1.2056" y2="-0.7658" width="0.01" layer="51"/>
<wire x1="-1.2034" y1="-0.7696" x2="-1.2038" y2="-0.7688" width="0.01" layer="51"/>
<wire x1="-1.2031" y1="-0.7704" x2="-1.2034" y2="-0.7696" width="0.01" layer="51"/>
<wire x1="-1.2024" y1="-0.7719" x2="-1.2031" y2="-0.7704" width="0.01" layer="51"/>
<wire x1="-1.2018" y1="-0.7735" x2="-1.2024" y2="-0.7719" width="0.01" layer="51"/>
<wire x1="-1.2013" y1="-0.775" x2="-1.2018" y2="-0.7735" width="0.01" layer="51"/>
<wire x1="-1.2005" y1="-0.7782" x2="-1.2013" y2="-0.775" width="0.01" layer="51"/>
<wire x1="-1.2004" y1="-0.7789" x2="-1.2005" y2="-0.7782" width="0.01" layer="51"/>
<wire x1="-1.2001" y1="-0.7813" x2="-1.2004" y2="-0.7789" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-0.7828" x2="-1.2001" y2="-0.7813" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-0.8372" x2="-1.2" y2="-0.7828" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-0.8372" x2="-4" y2="-0.8372" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-1.7872" x2="-1.2" y2="-1.0916" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-1.0916" x2="-1.2" y2="-1.0372" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-1.0372" x2="-1.2" y2="-0.8372" width="0.01" layer="51"/>
<wire x1="-1.2001" y1="-1.0931" x2="-1.2" y2="-1.0916" width="0.01" layer="51"/>
<wire x1="-1.2004" y1="-1.0955" x2="-1.2001" y2="-1.0931" width="0.01" layer="51"/>
<wire x1="-1.2005" y1="-1.0962" x2="-1.2004" y2="-1.0955" width="0.01" layer="51"/>
<wire x1="-1.2013" y1="-1.0994" x2="-1.2005" y2="-1.0962" width="0.01" layer="51"/>
<wire x1="-1.2018" y1="-1.1009" x2="-1.2013" y2="-1.0994" width="0.01" layer="51"/>
<wire x1="-1.2024" y1="-1.1025" x2="-1.2018" y2="-1.1009" width="0.01" layer="51"/>
<wire x1="-1.2031" y1="-1.104" x2="-1.2024" y2="-1.1025" width="0.01" layer="51"/>
<wire x1="-1.2034" y1="-1.1048" x2="-1.2031" y2="-1.104" width="0.01" layer="51"/>
<wire x1="-1.2038" y1="-1.1056" x2="-1.2034" y2="-1.1048" width="0.01" layer="51"/>
<wire x1="-1.2056" y1="-1.1086" x2="-1.2038" y2="-1.1056" width="0.01" layer="51"/>
<wire x1="-1.2066" y1="-1.1102" x2="-1.2056" y2="-1.1086" width="0.01" layer="51"/>
<wire x1="-1.2077" y1="-1.1117" x2="-1.2066" y2="-1.1102" width="0.01" layer="51"/>
<wire x1="-1.2089" y1="-1.1132" x2="-1.2077" y2="-1.1117" width="0.01" layer="51"/>
<wire x1="-1.2095" y1="-1.114" x2="-1.2089" y2="-1.1132" width="0.01" layer="51"/>
<wire x1="-1.2101" y1="-1.1147" x2="-1.2095" y2="-1.114" width="0.01" layer="51"/>
<wire x1="-1.2115" y1="-1.1163" x2="-1.2101" y2="-1.1147" width="0.01" layer="51"/>
<wire x1="-1.2129" y1="-1.1178" x2="-1.2115" y2="-1.1163" width="0.01" layer="51"/>
<wire x1="-1.2144" y1="-1.1193" x2="-1.2129" y2="-1.1178" width="0.01" layer="51"/>
<wire x1="-1.2176" y1="-1.1223" x2="-1.2144" y2="-1.1193" width="0.01" layer="51"/>
<wire x1="-1.2185" y1="-1.123" x2="-1.2176" y2="-1.1223" width="0.01" layer="51"/>
<wire x1="-1.2194" y1="-1.1238" x2="-1.2185" y2="-1.123" width="0.01" layer="51"/>
<wire x1="-1.2212" y1="-1.1252" x2="-1.2194" y2="-1.1238" width="0.01" layer="51"/>
<wire x1="-1.2231" y1="-1.1267" x2="-1.2212" y2="-1.1252" width="0.01" layer="51"/>
<wire x1="-1.2251" y1="-1.1282" x2="-1.2231" y2="-1.1267" width="0.01" layer="51"/>
<wire x1="-1.2272" y1="-1.1296" x2="-1.2251" y2="-1.1282" width="0.01" layer="51"/>
<wire x1="-1.2293" y1="-1.1311" x2="-1.2272" y2="-1.1296" width="0.01" layer="51"/>
<wire x1="-1.2304" y1="-1.1318" x2="-1.2293" y2="-1.1311" width="0.01" layer="51"/>
<wire x1="-1.2316" y1="-1.1325" x2="-1.2304" y2="-1.1318" width="0.01" layer="51"/>
<wire x1="-1.2339" y1="-1.134" x2="-1.2316" y2="-1.1325" width="0.01" layer="51"/>
<wire x1="-1.2387" y1="-1.1368" x2="-1.2339" y2="-1.134" width="0.01" layer="51"/>
<wire x1="-1.2465" y1="-1.141" x2="-1.2387" y2="-1.1368" width="0.01" layer="51"/>
<wire x1="-1.2493" y1="-1.1423" x2="-1.2465" y2="-1.141" width="0.01" layer="51"/>
<wire x1="-1.2521" y1="-1.1437" x2="-1.2493" y2="-1.1423" width="0.01" layer="51"/>
<wire x1="-1.2551" y1="-1.1451" x2="-1.2521" y2="-1.1437" width="0.01" layer="51"/>
<wire x1="-1.258" y1="-1.1464" x2="-1.2551" y2="-1.1451" width="0.01" layer="51"/>
<wire x1="-1.2611" y1="-1.1477" x2="-1.258" y2="-1.1464" width="0.01" layer="51"/>
<wire x1="-1.2626" y1="-1.1484" x2="-1.2611" y2="-1.1477" width="0.01" layer="51"/>
<wire x1="-1.2642" y1="-1.149" x2="-1.2626" y2="-1.1484" width="0.01" layer="51"/>
<wire x1="-1.2674" y1="-1.1503" x2="-1.2642" y2="-1.149" width="0.01" layer="51"/>
<wire x1="-1.274" y1="-1.1529" x2="-1.2674" y2="-1.1503" width="0.01" layer="51"/>
<wire x1="-1.2774" y1="-1.1542" x2="-1.274" y2="-1.1529" width="0.01" layer="51"/>
<wire x1="-1.2809" y1="-1.1554" x2="-1.2774" y2="-1.1542" width="0.01" layer="51"/>
<wire x1="-1.2827" y1="-1.156" x2="-1.2809" y2="-1.1554" width="0.01" layer="51"/>
<wire x1="-1.2844" y1="-1.1567" x2="-1.2827" y2="-1.156" width="0.01" layer="51"/>
<wire x1="-1.288" y1="-1.1579" x2="-1.2844" y2="-1.1567" width="0.01" layer="51"/>
<wire x1="-1.2917" y1="-1.1591" x2="-1.288" y2="-1.1579" width="0.01" layer="51"/>
<wire x1="-1.2993" y1="-1.1615" x2="-1.2917" y2="-1.1591" width="0.01" layer="51"/>
<wire x1="-1.3031" y1="-1.1626" x2="-1.2993" y2="-1.1615" width="0.01" layer="51"/>
<wire x1="-1.3071" y1="-1.1638" x2="-1.3031" y2="-1.1626" width="0.01" layer="51"/>
<wire x1="-1.3151" y1="-1.166" x2="-1.3071" y2="-1.1638" width="0.01" layer="51"/>
<wire x1="-1.3172" y1="-1.1666" x2="-1.3151" y2="-1.166" width="0.01" layer="51"/>
<wire x1="-1.3192" y1="-1.1671" x2="-1.3172" y2="-1.1666" width="0.01" layer="51"/>
<wire x1="-1.3276" y1="-1.1693" x2="-1.3192" y2="-1.1671" width="0.01" layer="51"/>
<wire x1="-1.3298" y1="-1.1698" x2="-1.3276" y2="-1.1693" width="0.01" layer="51"/>
<wire x1="-1.3319" y1="-1.1703" x2="-1.3298" y2="-1.1698" width="0.01" layer="51"/>
<wire x1="-1.3363" y1="-1.1714" x2="-1.3319" y2="-1.1703" width="0.01" layer="51"/>
<wire x1="-1.3451" y1="-1.1734" x2="-1.3363" y2="-1.1714" width="0.01" layer="51"/>
<wire x1="-1.3496" y1="-1.1744" x2="-1.3451" y2="-1.1734" width="0.01" layer="51"/>
<wire x1="-1.3542" y1="-1.1753" x2="-1.3496" y2="-1.1744" width="0.01" layer="51"/>
<wire x1="-1.3588" y1="-1.1763" x2="-1.3542" y2="-1.1753" width="0.01" layer="51"/>
<wire x1="-1.3682" y1="-1.1781" x2="-1.3588" y2="-1.1763" width="0.01" layer="51"/>
<wire x1="-1.3826" y1="-1.1808" x2="-1.3682" y2="-1.1781" width="0.01" layer="51"/>
<wire x1="-1.3851" y1="-1.1812" x2="-1.3826" y2="-1.1808" width="0.01" layer="51"/>
<wire x1="-1.3875" y1="-1.1816" x2="-1.3851" y2="-1.1812" width="0.01" layer="51"/>
<wire x1="-1.4025" y1="-1.184" x2="-1.3875" y2="-1.1816" width="0.01" layer="51"/>
<wire x1="-1.4076" y1="-1.1848" x2="-1.4025" y2="-1.184" width="0.01" layer="51"/>
<wire x1="-1.4127" y1="-1.1855" x2="-1.4076" y2="-1.1848" width="0.01" layer="51"/>
<wire x1="-1.4153" y1="-1.1859" x2="-1.4127" y2="-1.1855" width="0.01" layer="51"/>
<wire x1="-1.4179" y1="-1.1862" x2="-1.4153" y2="-1.1859" width="0.01" layer="51"/>
<wire x1="-1.4283" y1="-1.1876" x2="-1.4179" y2="-1.1862" width="0.01" layer="51"/>
<wire x1="-1.4336" y1="-1.1883" x2="-1.4283" y2="-1.1876" width="0.01" layer="51"/>
<wire x1="-1.4442" y1="-1.1895" x2="-1.4336" y2="-1.1883" width="0.01" layer="51"/>
<wire x1="-1.455" y1="-1.1907" x2="-1.4442" y2="-1.1895" width="0.01" layer="51"/>
<wire x1="-1.4605" y1="-1.1912" x2="-1.455" y2="-1.1907" width="0.01" layer="51"/>
<wire x1="-1.4659" y1="-1.1918" x2="-1.4605" y2="-1.1912" width="0.01" layer="51"/>
<wire x1="-1.4769" y1="-1.1928" x2="-1.4659" y2="-1.1918" width="0.01" layer="51"/>
<wire x1="-1.4825" y1="-1.1932" x2="-1.4769" y2="-1.1928" width="0.01" layer="51"/>
<wire x1="-1.4881" y1="-1.1937" x2="-1.4825" y2="-1.1932" width="0.01" layer="51"/>
<wire x1="-1.5049" y1="-1.1949" x2="-1.4881" y2="-1.1937" width="0.01" layer="51"/>
<wire x1="-1.5106" y1="-1.1953" x2="-1.5049" y2="-1.1949" width="0.01" layer="51"/>
<wire x1="-1.5134" y1="-1.1954" x2="-1.5106" y2="-1.1953" width="0.01" layer="51"/>
<wire x1="-1.5163" y1="-1.1956" x2="-1.5134" y2="-1.1954" width="0.01" layer="51"/>
<wire x1="-1.5334" y1="-1.1965" x2="-1.5163" y2="-1.1956" width="0.01" layer="51"/>
<wire x1="-1.5392" y1="-1.1967" x2="-1.5334" y2="-1.1965" width="0.01" layer="51"/>
<wire x1="-1.5449" y1="-1.1969" x2="-1.5392" y2="-1.1967" width="0.01" layer="51"/>
<wire x1="-1.5478" y1="-1.1971" x2="-1.5449" y2="-1.1969" width="0.01" layer="51"/>
<wire x1="-1.5507" y1="-1.1972" x2="-1.5478" y2="-1.1971" width="0.01" layer="51"/>
<wire x1="-1.5565" y1="-1.1973" x2="-1.5507" y2="-1.1972" width="0.01" layer="51"/>
<wire x1="-1.5622" y1="-1.1975" x2="-1.5565" y2="-1.1973" width="0.01" layer="51"/>
<wire x1="-1.5796" y1="-1.1978" x2="-1.5622" y2="-1.1975" width="0.01" layer="51"/>
<wire x1="-1.5826" y1="-1.1979" x2="-1.5796" y2="-1.1978" width="0.01" layer="51"/>
<wire x1="-1.5913" y1="-1.1979" x2="-1.5826" y2="-1.1979" width="0.01" layer="51"/>
<wire x1="-1.5971" y1="-1.198" x2="-1.5913" y2="-1.1979" width="0.01" layer="51"/>
<wire x1="-1.6" y1="-1.198" x2="-1.5971" y2="-1.198" width="0.01" layer="51"/>
<wire x1="-1.6" y1="-1.198" x2="-3.4" y2="-1.198" width="0.01" layer="51"/>
<wire x1="-3.4" y1="-1.198" x2="-4" y2="-1.0372" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-1.0372" x2="-4" y2="-1.0372" width="0.01" layer="51"/>
<wire x1="-4" y1="0.7128" x2="-4" y2="1.4628" width="0.01" layer="51"/>
<wire x1="-4" y1="1.4628" x2="-4" y2="1.6628" width="0.01" layer="51"/>
<wire x1="-4" y1="1.6628" x2="-4" y2="2.4128" width="0.01" layer="51"/>
<wire x1="-3.4" y1="0.7128" x2="-3.4" y2="1.302" width="0.01" layer="51"/>
<wire x1="-1.2" y1="0.7128" x2="-1.6" y2="0.7128" width="0.01" layer="51"/>
<wire x1="-1.6" y1="0.7128" x2="-4" y2="0.7128" width="0.01" layer="51"/>
<wire x1="-1.6" y1="0.7128" x2="-1.6" y2="1.302" width="0.01" layer="51"/>
<wire x1="-1.2" y1="1.7172" x2="-1.2" y2="2.4128" width="0.01" layer="51"/>
<wire x1="-4" y1="1.6628" x2="-3.4" y2="1.8236" width="0.01" layer="51"/>
<wire x1="-3.4" y1="1.8236" x2="-1.6" y2="1.8236" width="0.01" layer="51"/>
<wire x1="-1.5971" y1="1.8236" x2="-1.6" y2="1.8236" width="0.01" layer="51"/>
<wire x1="-1.5913" y1="1.8235" x2="-1.5971" y2="1.8236" width="0.01" layer="51"/>
<wire x1="-1.5826" y1="1.8235" x2="-1.5913" y2="1.8235" width="0.01" layer="51"/>
<wire x1="-1.5796" y1="1.8234" x2="-1.5826" y2="1.8235" width="0.01" layer="51"/>
<wire x1="-1.5622" y1="1.8231" x2="-1.5796" y2="1.8234" width="0.01" layer="51"/>
<wire x1="-1.5565" y1="1.8229" x2="-1.5622" y2="1.8231" width="0.01" layer="51"/>
<wire x1="-1.5507" y1="1.8228" x2="-1.5565" y2="1.8229" width="0.01" layer="51"/>
<wire x1="-1.5478" y1="1.8227" x2="-1.5507" y2="1.8228" width="0.01" layer="51"/>
<wire x1="-1.5449" y1="1.8225" x2="-1.5478" y2="1.8227" width="0.01" layer="51"/>
<wire x1="-1.5392" y1="1.8223" x2="-1.5449" y2="1.8225" width="0.01" layer="51"/>
<wire x1="-1.5334" y1="1.8221" x2="-1.5392" y2="1.8223" width="0.01" layer="51"/>
<wire x1="-1.5163" y1="1.8212" x2="-1.5334" y2="1.8221" width="0.01" layer="51"/>
<wire x1="-1.5134" y1="1.821" x2="-1.5163" y2="1.8212" width="0.01" layer="51"/>
<wire x1="-1.5106" y1="1.8209" x2="-1.5134" y2="1.821" width="0.01" layer="51"/>
<wire x1="-1.5049" y1="1.8205" x2="-1.5106" y2="1.8209" width="0.01" layer="51"/>
<wire x1="-1.4881" y1="1.8193" x2="-1.5049" y2="1.8205" width="0.01" layer="51"/>
<wire x1="-1.4825" y1="1.8188" x2="-1.4881" y2="1.8193" width="0.01" layer="51"/>
<wire x1="-1.4769" y1="1.8184" x2="-1.4825" y2="1.8188" width="0.01" layer="51"/>
<wire x1="-1.4659" y1="1.8174" x2="-1.4769" y2="1.8184" width="0.01" layer="51"/>
<wire x1="-1.4605" y1="1.8168" x2="-1.4659" y2="1.8174" width="0.01" layer="51"/>
<wire x1="-1.455" y1="1.8163" x2="-1.4605" y2="1.8168" width="0.01" layer="51"/>
<wire x1="-1.4442" y1="1.8151" x2="-1.455" y2="1.8163" width="0.01" layer="51"/>
<wire x1="-1.4336" y1="1.8139" x2="-1.4442" y2="1.8151" width="0.01" layer="51"/>
<wire x1="-1.4283" y1="1.8132" x2="-1.4336" y2="1.8139" width="0.01" layer="51"/>
<wire x1="-1.4179" y1="1.8118" x2="-1.4283" y2="1.8132" width="0.01" layer="51"/>
<wire x1="-1.4153" y1="1.8115" x2="-1.4179" y2="1.8118" width="0.01" layer="51"/>
<wire x1="-1.4127" y1="1.8111" x2="-1.4153" y2="1.8115" width="0.01" layer="51"/>
<wire x1="-1.4076" y1="1.8104" x2="-1.4127" y2="1.8111" width="0.01" layer="51"/>
<wire x1="-1.4025" y1="1.8096" x2="-1.4076" y2="1.8104" width="0.01" layer="51"/>
<wire x1="-1.3875" y1="1.8072" x2="-1.4025" y2="1.8096" width="0.01" layer="51"/>
<wire x1="-1.3851" y1="1.8068" x2="-1.3875" y2="1.8072" width="0.01" layer="51"/>
<wire x1="-1.3826" y1="1.8064" x2="-1.3851" y2="1.8068" width="0.01" layer="51"/>
<wire x1="-1.3682" y1="1.8037" x2="-1.3826" y2="1.8064" width="0.01" layer="51"/>
<wire x1="-1.3588" y1="1.8019" x2="-1.3682" y2="1.8037" width="0.01" layer="51"/>
<wire x1="-1.3542" y1="1.8009" x2="-1.3588" y2="1.8019" width="0.01" layer="51"/>
<wire x1="-1.3496" y1="1.8" x2="-1.3542" y2="1.8009" width="0.01" layer="51"/>
<wire x1="-1.3451" y1="1.799" x2="-1.3496" y2="1.8" width="0.01" layer="51"/>
<wire x1="-1.3363" y1="1.797" x2="-1.3451" y2="1.799" width="0.01" layer="51"/>
<wire x1="-1.3319" y1="1.7959" x2="-1.3363" y2="1.797" width="0.01" layer="51"/>
<wire x1="-1.3298" y1="1.7954" x2="-1.3319" y2="1.7959" width="0.01" layer="51"/>
<wire x1="-1.3276" y1="1.7949" x2="-1.3298" y2="1.7954" width="0.01" layer="51"/>
<wire x1="-1.3192" y1="1.7927" x2="-1.3276" y2="1.7949" width="0.01" layer="51"/>
<wire x1="-1.3172" y1="1.7922" x2="-1.3192" y2="1.7927" width="0.01" layer="51"/>
<wire x1="-1.3151" y1="1.7916" x2="-1.3172" y2="1.7922" width="0.01" layer="51"/>
<wire x1="-1.3071" y1="1.7894" x2="-1.3151" y2="1.7916" width="0.01" layer="51"/>
<wire x1="-1.3031" y1="1.7882" x2="-1.3071" y2="1.7894" width="0.01" layer="51"/>
<wire x1="-1.2993" y1="1.7871" x2="-1.3031" y2="1.7882" width="0.01" layer="51"/>
<wire x1="-1.2917" y1="1.7847" x2="-1.2993" y2="1.7871" width="0.01" layer="51"/>
<wire x1="-1.288" y1="1.7835" x2="-1.2917" y2="1.7847" width="0.01" layer="51"/>
<wire x1="-1.2844" y1="1.7823" x2="-1.288" y2="1.7835" width="0.01" layer="51"/>
<wire x1="-1.2827" y1="1.7816" x2="-1.2844" y2="1.7823" width="0.01" layer="51"/>
<wire x1="-1.2809" y1="1.781" x2="-1.2827" y2="1.7816" width="0.01" layer="51"/>
<wire x1="-1.2774" y1="1.7798" x2="-1.2809" y2="1.781" width="0.01" layer="51"/>
<wire x1="-1.274" y1="1.7785" x2="-1.2774" y2="1.7798" width="0.01" layer="51"/>
<wire x1="-1.2674" y1="1.7759" x2="-1.274" y2="1.7785" width="0.01" layer="51"/>
<wire x1="-1.2642" y1="1.7746" x2="-1.2674" y2="1.7759" width="0.01" layer="51"/>
<wire x1="-1.2626" y1="1.774" x2="-1.2642" y2="1.7746" width="0.01" layer="51"/>
<wire x1="-1.2611" y1="1.7733" x2="-1.2626" y2="1.774" width="0.01" layer="51"/>
<wire x1="-1.258" y1="1.772" x2="-1.2611" y2="1.7733" width="0.01" layer="51"/>
<wire x1="-1.2551" y1="1.7707" x2="-1.258" y2="1.772" width="0.01" layer="51"/>
<wire x1="-1.2521" y1="1.7693" x2="-1.2551" y2="1.7707" width="0.01" layer="51"/>
<wire x1="-1.2493" y1="1.7679" x2="-1.2521" y2="1.7693" width="0.01" layer="51"/>
<wire x1="-1.2465" y1="1.7666" x2="-1.2493" y2="1.7679" width="0.01" layer="51"/>
<wire x1="-1.2387" y1="1.7624" x2="-1.2465" y2="1.7666" width="0.01" layer="51"/>
<wire x1="-1.2339" y1="1.7596" x2="-1.2387" y2="1.7624" width="0.01" layer="51"/>
<wire x1="-1.2316" y1="1.7581" x2="-1.2339" y2="1.7596" width="0.01" layer="51"/>
<wire x1="-1.2304" y1="1.7574" x2="-1.2316" y2="1.7581" width="0.01" layer="51"/>
<wire x1="-1.2293" y1="1.7567" x2="-1.2304" y2="1.7574" width="0.01" layer="51"/>
<wire x1="-1.2272" y1="1.7552" x2="-1.2293" y2="1.7567" width="0.01" layer="51"/>
<wire x1="-1.2251" y1="1.7538" x2="-1.2272" y2="1.7552" width="0.01" layer="51"/>
<wire x1="-1.2231" y1="1.7523" x2="-1.2251" y2="1.7538" width="0.01" layer="51"/>
<wire x1="-1.2212" y1="1.7508" x2="-1.2231" y2="1.7523" width="0.01" layer="51"/>
<wire x1="-1.2194" y1="1.7494" x2="-1.2212" y2="1.7508" width="0.01" layer="51"/>
<wire x1="-1.2185" y1="1.7486" x2="-1.2194" y2="1.7494" width="0.01" layer="51"/>
<wire x1="-1.2176" y1="1.7479" x2="-1.2185" y2="1.7486" width="0.01" layer="51"/>
<wire x1="-1.2144" y1="1.7449" x2="-1.2176" y2="1.7479" width="0.01" layer="51"/>
<wire x1="-1.2129" y1="1.7434" x2="-1.2144" y2="1.7449" width="0.01" layer="51"/>
<wire x1="-1.2115" y1="1.7419" x2="-1.2129" y2="1.7434" width="0.01" layer="51"/>
<wire x1="-1.2101" y1="1.7403" x2="-1.2115" y2="1.7419" width="0.01" layer="51"/>
<wire x1="-1.2095" y1="1.7396" x2="-1.2101" y2="1.7403" width="0.01" layer="51"/>
<wire x1="-1.2089" y1="1.7388" x2="-1.2095" y2="1.7396" width="0.01" layer="51"/>
<wire x1="-1.2077" y1="1.7373" x2="-1.2089" y2="1.7388" width="0.01" layer="51"/>
<wire x1="-1.2066" y1="1.7358" x2="-1.2077" y2="1.7373" width="0.01" layer="51"/>
<wire x1="-1.2056" y1="1.7342" x2="-1.2066" y2="1.7358" width="0.01" layer="51"/>
<wire x1="-1.2038" y1="1.7312" x2="-1.2056" y2="1.7342" width="0.01" layer="51"/>
<wire x1="-1.2034" y1="1.7304" x2="-1.2038" y2="1.7312" width="0.01" layer="51"/>
<wire x1="-1.2031" y1="1.7296" x2="-1.2034" y2="1.7304" width="0.01" layer="51"/>
<wire x1="-1.2024" y1="1.7281" x2="-1.2031" y2="1.7296" width="0.01" layer="51"/>
<wire x1="-1.2018" y1="1.7265" x2="-1.2024" y2="1.7281" width="0.01" layer="51"/>
<wire x1="-1.2013" y1="1.725" x2="-1.2018" y2="1.7265" width="0.01" layer="51"/>
<wire x1="-1.2005" y1="1.7218" x2="-1.2013" y2="1.725" width="0.01" layer="51"/>
<wire x1="-1.2004" y1="1.7211" x2="-1.2005" y2="1.7218" width="0.01" layer="51"/>
<wire x1="-1.2001" y1="1.7187" x2="-1.2004" y2="1.7211" width="0.01" layer="51"/>
<wire x1="-1.2" y1="1.7172" x2="-1.2001" y2="1.7187" width="0.01" layer="51"/>
<wire x1="-1.2" y1="1.6628" x2="-1.2" y2="1.7172" width="0.01" layer="51"/>
<wire x1="-1.2" y1="1.6628" x2="-4" y2="1.6628" width="0.01" layer="51"/>
<wire x1="-1.2" y1="0.7128" x2="-1.2" y2="1.4084" width="0.01" layer="51"/>
<wire x1="-1.2" y1="1.4084" x2="-1.2" y2="1.4628" width="0.01" layer="51"/>
<wire x1="-1.2" y1="1.4628" x2="-1.2" y2="1.6628" width="0.01" layer="51"/>
<wire x1="-1.2001" y1="1.4069" x2="-1.2" y2="1.4084" width="0.01" layer="51"/>
<wire x1="-1.2004" y1="1.4045" x2="-1.2001" y2="1.4069" width="0.01" layer="51"/>
<wire x1="-1.2005" y1="1.4038" x2="-1.2004" y2="1.4045" width="0.01" layer="51"/>
<wire x1="-1.2013" y1="1.4006" x2="-1.2005" y2="1.4038" width="0.01" layer="51"/>
<wire x1="-1.2018" y1="1.3991" x2="-1.2013" y2="1.4006" width="0.01" layer="51"/>
<wire x1="-1.2024" y1="1.3975" x2="-1.2018" y2="1.3991" width="0.01" layer="51"/>
<wire x1="-1.2031" y1="1.396" x2="-1.2024" y2="1.3975" width="0.01" layer="51"/>
<wire x1="-1.2034" y1="1.3952" x2="-1.2031" y2="1.396" width="0.01" layer="51"/>
<wire x1="-1.2038" y1="1.3944" x2="-1.2034" y2="1.3952" width="0.01" layer="51"/>
<wire x1="-1.2056" y1="1.3914" x2="-1.2038" y2="1.3944" width="0.01" layer="51"/>
<wire x1="-1.2066" y1="1.3898" x2="-1.2056" y2="1.3914" width="0.01" layer="51"/>
<wire x1="-1.2077" y1="1.3883" x2="-1.2066" y2="1.3898" width="0.01" layer="51"/>
<wire x1="-1.2089" y1="1.3868" x2="-1.2077" y2="1.3883" width="0.01" layer="51"/>
<wire x1="-1.2095" y1="1.386" x2="-1.2089" y2="1.3868" width="0.01" layer="51"/>
<wire x1="-1.2101" y1="1.3853" x2="-1.2095" y2="1.386" width="0.01" layer="51"/>
<wire x1="-1.2115" y1="1.3837" x2="-1.2101" y2="1.3853" width="0.01" layer="51"/>
<wire x1="-1.2129" y1="1.3822" x2="-1.2115" y2="1.3837" width="0.01" layer="51"/>
<wire x1="-1.2144" y1="1.3807" x2="-1.2129" y2="1.3822" width="0.01" layer="51"/>
<wire x1="-1.2176" y1="1.3777" x2="-1.2144" y2="1.3807" width="0.01" layer="51"/>
<wire x1="-1.2185" y1="1.377" x2="-1.2176" y2="1.3777" width="0.01" layer="51"/>
<wire x1="-1.2194" y1="1.3762" x2="-1.2185" y2="1.377" width="0.01" layer="51"/>
<wire x1="-1.2212" y1="1.3748" x2="-1.2194" y2="1.3762" width="0.01" layer="51"/>
<wire x1="-1.2231" y1="1.3733" x2="-1.2212" y2="1.3748" width="0.01" layer="51"/>
<wire x1="-1.2251" y1="1.3718" x2="-1.2231" y2="1.3733" width="0.01" layer="51"/>
<wire x1="-1.2272" y1="1.3704" x2="-1.2251" y2="1.3718" width="0.01" layer="51"/>
<wire x1="-1.2293" y1="1.3689" x2="-1.2272" y2="1.3704" width="0.01" layer="51"/>
<wire x1="-1.2304" y1="1.3682" x2="-1.2293" y2="1.3689" width="0.01" layer="51"/>
<wire x1="-1.2316" y1="1.3675" x2="-1.2304" y2="1.3682" width="0.01" layer="51"/>
<wire x1="-1.2339" y1="1.366" x2="-1.2316" y2="1.3675" width="0.01" layer="51"/>
<wire x1="-1.2387" y1="1.3632" x2="-1.2339" y2="1.366" width="0.01" layer="51"/>
<wire x1="-1.2465" y1="1.359" x2="-1.2387" y2="1.3632" width="0.01" layer="51"/>
<wire x1="-1.2493" y1="1.3577" x2="-1.2465" y2="1.359" width="0.01" layer="51"/>
<wire x1="-1.2521" y1="1.3563" x2="-1.2493" y2="1.3577" width="0.01" layer="51"/>
<wire x1="-1.2551" y1="1.3549" x2="-1.2521" y2="1.3563" width="0.01" layer="51"/>
<wire x1="-1.258" y1="1.3536" x2="-1.2551" y2="1.3549" width="0.01" layer="51"/>
<wire x1="-1.2611" y1="1.3523" x2="-1.258" y2="1.3536" width="0.01" layer="51"/>
<wire x1="-1.2626" y1="1.3516" x2="-1.2611" y2="1.3523" width="0.01" layer="51"/>
<wire x1="-1.2642" y1="1.351" x2="-1.2626" y2="1.3516" width="0.01" layer="51"/>
<wire x1="-1.2674" y1="1.3497" x2="-1.2642" y2="1.351" width="0.01" layer="51"/>
<wire x1="-1.274" y1="1.3471" x2="-1.2674" y2="1.3497" width="0.01" layer="51"/>
<wire x1="-1.2774" y1="1.3458" x2="-1.274" y2="1.3471" width="0.01" layer="51"/>
<wire x1="-1.2809" y1="1.3446" x2="-1.2774" y2="1.3458" width="0.01" layer="51"/>
<wire x1="-1.2827" y1="1.344" x2="-1.2809" y2="1.3446" width="0.01" layer="51"/>
<wire x1="-1.2844" y1="1.3433" x2="-1.2827" y2="1.344" width="0.01" layer="51"/>
<wire x1="-1.288" y1="1.3421" x2="-1.2844" y2="1.3433" width="0.01" layer="51"/>
<wire x1="-1.2917" y1="1.3409" x2="-1.288" y2="1.3421" width="0.01" layer="51"/>
<wire x1="-1.2993" y1="1.3385" x2="-1.2917" y2="1.3409" width="0.01" layer="51"/>
<wire x1="-1.3031" y1="1.3374" x2="-1.2993" y2="1.3385" width="0.01" layer="51"/>
<wire x1="-1.3071" y1="1.3362" x2="-1.3031" y2="1.3374" width="0.01" layer="51"/>
<wire x1="-1.3151" y1="1.334" x2="-1.3071" y2="1.3362" width="0.01" layer="51"/>
<wire x1="-1.3172" y1="1.3334" x2="-1.3151" y2="1.334" width="0.01" layer="51"/>
<wire x1="-1.3192" y1="1.3329" x2="-1.3172" y2="1.3334" width="0.01" layer="51"/>
<wire x1="-1.3276" y1="1.3307" x2="-1.3192" y2="1.3329" width="0.01" layer="51"/>
<wire x1="-1.3298" y1="1.3302" x2="-1.3276" y2="1.3307" width="0.01" layer="51"/>
<wire x1="-1.3319" y1="1.3297" x2="-1.3298" y2="1.3302" width="0.01" layer="51"/>
<wire x1="-1.3363" y1="1.3286" x2="-1.3319" y2="1.3297" width="0.01" layer="51"/>
<wire x1="-1.3451" y1="1.3266" x2="-1.3363" y2="1.3286" width="0.01" layer="51"/>
<wire x1="-1.3496" y1="1.3256" x2="-1.3451" y2="1.3266" width="0.01" layer="51"/>
<wire x1="-1.3542" y1="1.3247" x2="-1.3496" y2="1.3256" width="0.01" layer="51"/>
<wire x1="-1.3588" y1="1.3237" x2="-1.3542" y2="1.3247" width="0.01" layer="51"/>
<wire x1="-1.3682" y1="1.3219" x2="-1.3588" y2="1.3237" width="0.01" layer="51"/>
<wire x1="-1.3826" y1="1.3192" x2="-1.3682" y2="1.3219" width="0.01" layer="51"/>
<wire x1="-1.3851" y1="1.3188" x2="-1.3826" y2="1.3192" width="0.01" layer="51"/>
<wire x1="-1.3875" y1="1.3184" x2="-1.3851" y2="1.3188" width="0.01" layer="51"/>
<wire x1="-1.4025" y1="1.316" x2="-1.3875" y2="1.3184" width="0.01" layer="51"/>
<wire x1="-1.4076" y1="1.3152" x2="-1.4025" y2="1.316" width="0.01" layer="51"/>
<wire x1="-1.4127" y1="1.3145" x2="-1.4076" y2="1.3152" width="0.01" layer="51"/>
<wire x1="-1.4153" y1="1.3141" x2="-1.4127" y2="1.3145" width="0.01" layer="51"/>
<wire x1="-1.4179" y1="1.3138" x2="-1.4153" y2="1.3141" width="0.01" layer="51"/>
<wire x1="-1.4283" y1="1.3124" x2="-1.4179" y2="1.3138" width="0.01" layer="51"/>
<wire x1="-1.4336" y1="1.3117" x2="-1.4283" y2="1.3124" width="0.01" layer="51"/>
<wire x1="-1.4442" y1="1.3105" x2="-1.4336" y2="1.3117" width="0.01" layer="51"/>
<wire x1="-1.455" y1="1.3093" x2="-1.4442" y2="1.3105" width="0.01" layer="51"/>
<wire x1="-1.4605" y1="1.3088" x2="-1.455" y2="1.3093" width="0.01" layer="51"/>
<wire x1="-1.4659" y1="1.3082" x2="-1.4605" y2="1.3088" width="0.01" layer="51"/>
<wire x1="-1.4769" y1="1.3072" x2="-1.4659" y2="1.3082" width="0.01" layer="51"/>
<wire x1="-1.4825" y1="1.3068" x2="-1.4769" y2="1.3072" width="0.01" layer="51"/>
<wire x1="-1.4881" y1="1.3063" x2="-1.4825" y2="1.3068" width="0.01" layer="51"/>
<wire x1="-1.5049" y1="1.3051" x2="-1.4881" y2="1.3063" width="0.01" layer="51"/>
<wire x1="-1.5106" y1="1.3047" x2="-1.5049" y2="1.3051" width="0.01" layer="51"/>
<wire x1="-1.5134" y1="1.3046" x2="-1.5106" y2="1.3047" width="0.01" layer="51"/>
<wire x1="-1.5163" y1="1.3044" x2="-1.5134" y2="1.3046" width="0.01" layer="51"/>
<wire x1="-1.5334" y1="1.3035" x2="-1.5163" y2="1.3044" width="0.01" layer="51"/>
<wire x1="-1.5392" y1="1.3033" x2="-1.5334" y2="1.3035" width="0.01" layer="51"/>
<wire x1="-1.5449" y1="1.3031" x2="-1.5392" y2="1.3033" width="0.01" layer="51"/>
<wire x1="-1.5478" y1="1.3029" x2="-1.5449" y2="1.3031" width="0.01" layer="51"/>
<wire x1="-1.5507" y1="1.3028" x2="-1.5478" y2="1.3029" width="0.01" layer="51"/>
<wire x1="-1.5565" y1="1.3027" x2="-1.5507" y2="1.3028" width="0.01" layer="51"/>
<wire x1="-1.5622" y1="1.3025" x2="-1.5565" y2="1.3027" width="0.01" layer="51"/>
<wire x1="-1.5796" y1="1.3022" x2="-1.5622" y2="1.3025" width="0.01" layer="51"/>
<wire x1="-1.5826" y1="1.3021" x2="-1.5796" y2="1.3022" width="0.01" layer="51"/>
<wire x1="-1.5913" y1="1.3021" x2="-1.5826" y2="1.3021" width="0.01" layer="51"/>
<wire x1="-1.5971" y1="1.302" x2="-1.5913" y2="1.3021" width="0.01" layer="51"/>
<wire x1="-1.6" y1="1.302" x2="-1.5971" y2="1.302" width="0.01" layer="51"/>
<wire x1="-1.6" y1="1.302" x2="-3.4" y2="1.302" width="0.01" layer="51"/>
<wire x1="-3.4" y1="1.302" x2="-4" y2="1.4628" width="0.01" layer="51"/>
<wire x1="-1.2" y1="1.4628" x2="-4" y2="1.4628" width="0.01" layer="51"/>
<wire x1="0.3" y1="3.6128" x2="1.0929" y2="3.6128" width="0.01" layer="51"/>
<wire x1="1.0929" y1="3.6128" x2="2.074" y2="3.6128" width="0.01" layer="51"/>
<wire x1="1.0929" y1="5.7128" x2="1.0929" y2="5.6128" width="0.2" layer="21"/>
<wire x1="6" y1="5.7128" x2="1.4464" y2="5.7128" width="0.2" layer="21"/>
<wire x1="1.4464" y1="5.7128" x2="-6" y2="5.7128" width="0.2" layer="21"/>
<wire x1="1.4464" y1="5.7128" x2="1.4464" y2="5.6128" width="0.2" layer="21"/>
<wire x1="0.3" y1="5.6128" x2="0.3" y2="5.3128" width="0.01" layer="51"/>
<wire x1="0.3" y1="5.6128" x2="1.0929" y2="5.6128" width="0.2" layer="21"/>
<wire x1="1.0983" y1="5.6128" x2="1.0929" y2="5.6128" width="0.2" layer="21"/>
<wire x1="1.1093" y1="5.6126" x2="1.0983" y2="5.6128" width="0.2" layer="21"/>
<wire x1="1.1202" y1="5.6124" x2="1.1093" y2="5.6126" width="0.2" layer="21"/>
<wire x1="1.1256" y1="5.6122" x2="1.1202" y2="5.6124" width="0.2" layer="21"/>
<wire x1="1.131" y1="5.6119" x2="1.1256" y2="5.6122" width="0.2" layer="21"/>
<wire x1="1.1419" y1="5.6114" x2="1.131" y2="5.6119" width="0.2" layer="21"/>
<wire x1="1.1527" y1="5.6106" x2="1.1419" y2="5.6114" width="0.2" layer="21"/>
<wire x1="1.1636" y1="5.6098" x2="1.1527" y2="5.6106" width="0.2" layer="21"/>
<wire x1="1.1743" y1="5.6088" x2="1.1636" y2="5.6098" width="0.2" layer="21"/>
<wire x1="1.1851" y1="5.6077" x2="1.1743" y2="5.6088" width="0.2" layer="21"/>
<wire x1="1.1904" y1="5.607" x2="1.1851" y2="5.6077" width="0.2" layer="21"/>
<wire x1="1.1958" y1="5.6064" x2="1.1904" y2="5.607" width="0.2" layer="21"/>
<wire x1="1.2064" y1="5.605" x2="1.1958" y2="5.6064" width="0.2" layer="21"/>
<wire x1="1.217" y1="5.6034" x2="1.2064" y2="5.605" width="0.2" layer="21"/>
<wire x1="1.2276" y1="5.6017" x2="1.217" y2="5.6034" width="0.2" layer="21"/>
<wire x1="1.238" y1="5.5999" x2="1.2276" y2="5.6017" width="0.2" layer="21"/>
<wire x1="1.2536" y1="5.5969" x2="1.238" y2="5.5999" width="0.01" layer="51"/>
<wire x1="1.2588" y1="5.5958" x2="1.2536" y2="5.5969" width="0.01" layer="51"/>
<wire x1="1.269" y1="5.5936" x2="1.2588" y2="5.5958" width="0.01" layer="51"/>
<wire x1="1.2792" y1="5.5912" x2="1.269" y2="5.5936" width="0.01" layer="51"/>
<wire x1="1.2842" y1="5.59" x2="1.2792" y2="5.5912" width="0.01" layer="51"/>
<wire x1="0.3" y1="5.3128" x2="1.0929" y2="5.3128" width="0.01" layer="51"/>
<wire x1="1.0929" y1="5.3128" x2="2.074" y2="5.3128" width="0.01" layer="51"/>
<wire x1="1.0929" y1="5.3128" x2="1.2842" y2="5.59" width="0.01" layer="51"/>
<wire x1="1.2893" y1="5.5912" x2="1.2842" y2="5.59" width="0.01" layer="51"/>
<wire x1="1.2992" y1="5.5936" x2="1.2893" y2="5.5912" width="0.01" layer="51"/>
<wire x1="1.3091" y1="5.5958" x2="1.2992" y2="5.5936" width="0.01" layer="51"/>
<wire x1="1.314" y1="5.5969" x2="1.3091" y2="5.5958" width="0.01" layer="51"/>
<wire x1="1.3189" y1="5.5979" x2="1.314" y2="5.5969" width="0.01" layer="51"/>
<wire x1="1.3286" y1="5.5999" x2="1.3189" y2="5.5979" width="0.01" layer="51"/>
<wire x1="1.3382" y1="5.6017" x2="1.3286" y2="5.5999" width="0.2" layer="21"/>
<wire x1="1.3476" y1="5.6034" x2="1.3382" y2="5.6017" width="0.2" layer="21"/>
<wire x1="1.3569" y1="5.605" x2="1.3476" y2="5.6034" width="0.2" layer="21"/>
<wire x1="1.3661" y1="5.6064" x2="1.3569" y2="5.605" width="0.2" layer="21"/>
<wire x1="1.3707" y1="5.607" x2="1.3661" y2="5.6064" width="0.2" layer="21"/>
<wire x1="1.3752" y1="5.6077" x2="1.3707" y2="5.607" width="0.2" layer="21"/>
<wire x1="1.3841" y1="5.6088" x2="1.3752" y2="5.6077" width="0.2" layer="21"/>
<wire x1="1.3929" y1="5.6098" x2="1.3841" y2="5.6088" width="0.2" layer="21"/>
<wire x1="1.4016" y1="5.6106" x2="1.3929" y2="5.6098" width="0.2" layer="21"/>
<wire x1="1.4101" y1="5.6114" x2="1.4016" y2="5.6106" width="0.2" layer="21"/>
<wire x1="1.4184" y1="5.6119" x2="1.4101" y2="5.6114" width="0.2" layer="21"/>
<wire x1="1.4226" y1="5.6122" x2="1.4184" y2="5.6119" width="0.2" layer="21"/>
<wire x1="1.4266" y1="5.6124" x2="1.4226" y2="5.6122" width="0.2" layer="21"/>
<wire x1="1.4347" y1="5.6126" x2="1.4266" y2="5.6124" width="0.2" layer="21"/>
<wire x1="1.4426" y1="5.6128" x2="1.4347" y2="5.6126" width="0.2" layer="21"/>
<wire x1="1.4464" y1="5.6128" x2="1.4426" y2="5.6128" width="0.2" layer="21"/>
<wire x1="1.4464" y1="5.6128" x2="2.4536" y2="5.6128" width="0.2" layer="21"/>
<wire x1="2.4017" y1="5.5737" x2="2.4536" y2="5.6128" width="0.01" layer="51"/>
<wire x1="2.298" y1="5.4936" x2="2.4017" y2="5.5737" width="0.01" layer="51"/>
<wire x1="2.1949" y1="5.4118" x2="2.298" y2="5.4936" width="0.01" layer="51"/>
<wire x1="2.1438" y1="5.3704" x2="2.1949" y2="5.4118" width="0.01" layer="51"/>
<wire x1="2.1321" y1="5.3608" x2="2.1438" y2="5.3704" width="0.01" layer="51"/>
<wire x1="2.1087" y1="5.3416" x2="2.1321" y2="5.3608" width="0.01" layer="51"/>
<wire x1="2.0855" y1="5.3224" x2="2.1087" y2="5.3416" width="0.01" layer="51"/>
<wire x1="2.074" y1="5.3128" x2="2.0855" y2="5.3224" width="0.01" layer="51"/>
<wire x1="2.0855" y1="3.6032" x2="2.074" y2="3.6128" width="0.01" layer="51"/>
<wire x1="2.1087" y1="3.584" x2="2.0855" y2="3.6032" width="0.01" layer="51"/>
<wire x1="2.1321" y1="3.5648" x2="2.1087" y2="3.584" width="0.01" layer="51"/>
<wire x1="2.1438" y1="3.5552" x2="2.1321" y2="3.5648" width="0.01" layer="51"/>
<wire x1="2.1949" y1="3.5138" x2="2.1438" y2="3.5552" width="0.01" layer="51"/>
<wire x1="2.298" y1="3.432" x2="2.1949" y2="3.5138" width="0.01" layer="51"/>
<wire x1="2.4017" y1="3.3519" x2="2.298" y2="3.432" width="0.01" layer="51"/>
<wire x1="2.4536" y1="3.3128" x2="2.4017" y2="3.3519" width="0.01" layer="51"/>
<wire x1="1.2842" y1="3.3356" x2="1.0929" y2="3.6128" width="0.01" layer="51"/>
<wire x1="0.3" y1="-3.8872" x2="1.0929" y2="-3.8872" width="0.01" layer="51"/>
<wire x1="1.0929" y1="-3.8872" x2="2.074" y2="-3.8872" width="0.01" layer="51"/>
<wire x1="0.3" y1="-1.8872" x2="0.3" y2="-2.1872" width="0.01" layer="51"/>
<wire x1="0.3" y1="-2.1872" x2="0.3" y2="-3.8872" width="0.01" layer="51"/>
<wire x1="0.3" y1="-1.8872" x2="1.0929" y2="-1.8872" width="0.01" layer="51"/>
<wire x1="1.0983" y1="-1.8872" x2="1.0929" y2="-1.8872" width="0.01" layer="51"/>
<wire x1="1.1093" y1="-1.8874" x2="1.0983" y2="-1.8872" width="0.01" layer="51"/>
<wire x1="1.1202" y1="-1.8876" x2="1.1093" y2="-1.8874" width="0.01" layer="51"/>
<wire x1="1.1256" y1="-1.8878" x2="1.1202" y2="-1.8876" width="0.01" layer="51"/>
<wire x1="1.131" y1="-1.8881" x2="1.1256" y2="-1.8878" width="0.01" layer="51"/>
<wire x1="1.1419" y1="-1.8886" x2="1.131" y2="-1.8881" width="0.01" layer="51"/>
<wire x1="1.1527" y1="-1.8894" x2="1.1419" y2="-1.8886" width="0.01" layer="51"/>
<wire x1="1.1636" y1="-1.8902" x2="1.1527" y2="-1.8894" width="0.01" layer="51"/>
<wire x1="1.1743" y1="-1.8912" x2="1.1636" y2="-1.8902" width="0.01" layer="51"/>
<wire x1="1.1851" y1="-1.8923" x2="1.1743" y2="-1.8912" width="0.01" layer="51"/>
<wire x1="1.1904" y1="-1.893" x2="1.1851" y2="-1.8923" width="0.01" layer="51"/>
<wire x1="1.1958" y1="-1.8936" x2="1.1904" y2="-1.893" width="0.01" layer="51"/>
<wire x1="1.2064" y1="-1.895" x2="1.1958" y2="-1.8936" width="0.01" layer="51"/>
<wire x1="1.217" y1="-1.8966" x2="1.2064" y2="-1.895" width="0.01" layer="51"/>
<wire x1="1.2276" y1="-1.8983" x2="1.217" y2="-1.8966" width="0.01" layer="51"/>
<wire x1="1.238" y1="-1.9001" x2="1.2276" y2="-1.8983" width="0.01" layer="51"/>
<wire x1="1.2536" y1="-1.9031" x2="1.238" y2="-1.9001" width="0.01" layer="51"/>
<wire x1="1.2588" y1="-1.9042" x2="1.2536" y2="-1.9031" width="0.01" layer="51"/>
<wire x1="1.269" y1="-1.9064" x2="1.2588" y2="-1.9042" width="0.01" layer="51"/>
<wire x1="1.2792" y1="-1.9088" x2="1.269" y2="-1.9064" width="0.01" layer="51"/>
<wire x1="1.2842" y1="-1.91" x2="1.2792" y2="-1.9088" width="0.01" layer="51"/>
<wire x1="0.3" y1="-2.1872" x2="1.0929" y2="-2.1872" width="0.01" layer="51"/>
<wire x1="1.0929" y1="-2.1872" x2="2.074" y2="-2.1872" width="0.01" layer="51"/>
<wire x1="1.0929" y1="-2.1872" x2="1.2842" y2="-1.91" width="0.01" layer="51"/>
<wire x1="1.2893" y1="-1.9088" x2="1.2842" y2="-1.91" width="0.01" layer="51"/>
<wire x1="1.2992" y1="-1.9064" x2="1.2893" y2="-1.9088" width="0.01" layer="51"/>
<wire x1="1.3091" y1="-1.9042" x2="1.2992" y2="-1.9064" width="0.01" layer="51"/>
<wire x1="1.314" y1="-1.9031" x2="1.3091" y2="-1.9042" width="0.01" layer="51"/>
<wire x1="1.3189" y1="-1.9021" x2="1.314" y2="-1.9031" width="0.01" layer="51"/>
<wire x1="1.3286" y1="-1.9001" x2="1.3189" y2="-1.9021" width="0.01" layer="51"/>
<wire x1="1.3382" y1="-1.8983" x2="1.3286" y2="-1.9001" width="0.01" layer="51"/>
<wire x1="1.3476" y1="-1.8966" x2="1.3382" y2="-1.8983" width="0.01" layer="51"/>
<wire x1="1.3569" y1="-1.895" x2="1.3476" y2="-1.8966" width="0.01" layer="51"/>
<wire x1="1.3661" y1="-1.8936" x2="1.3569" y2="-1.895" width="0.01" layer="51"/>
<wire x1="1.3707" y1="-1.893" x2="1.3661" y2="-1.8936" width="0.01" layer="51"/>
<wire x1="1.3752" y1="-1.8923" x2="1.3707" y2="-1.893" width="0.01" layer="51"/>
<wire x1="1.3841" y1="-1.8912" x2="1.3752" y2="-1.8923" width="0.01" layer="51"/>
<wire x1="1.3929" y1="-1.8902" x2="1.3841" y2="-1.8912" width="0.01" layer="51"/>
<wire x1="1.4016" y1="-1.8894" x2="1.3929" y2="-1.8902" width="0.01" layer="51"/>
<wire x1="1.4101" y1="-1.8886" x2="1.4016" y2="-1.8894" width="0.01" layer="51"/>
<wire x1="1.4184" y1="-1.8881" x2="1.4101" y2="-1.8886" width="0.01" layer="51"/>
<wire x1="1.4226" y1="-1.8878" x2="1.4184" y2="-1.8881" width="0.01" layer="51"/>
<wire x1="1.4266" y1="-1.8876" x2="1.4226" y2="-1.8878" width="0.01" layer="51"/>
<wire x1="1.4347" y1="-1.8874" x2="1.4266" y2="-1.8876" width="0.01" layer="51"/>
<wire x1="1.4426" y1="-1.8872" x2="1.4347" y2="-1.8874" width="0.01" layer="51"/>
<wire x1="1.4464" y1="-1.8872" x2="1.4426" y2="-1.8872" width="0.01" layer="51"/>
<wire x1="1.4464" y1="-1.8872" x2="2.4536" y2="-1.8872" width="0.01" layer="51"/>
<wire x1="2.4017" y1="-1.9263" x2="2.4536" y2="-1.8872" width="0.01" layer="51"/>
<wire x1="2.298" y1="-2.0064" x2="2.4017" y2="-1.9263" width="0.01" layer="51"/>
<wire x1="2.1949" y1="-2.0882" x2="2.298" y2="-2.0064" width="0.01" layer="51"/>
<wire x1="2.1438" y1="-2.1296" x2="2.1949" y2="-2.0882" width="0.01" layer="51"/>
<wire x1="2.1321" y1="-2.1392" x2="2.1438" y2="-2.1296" width="0.01" layer="51"/>
<wire x1="2.1087" y1="-2.1584" x2="2.1321" y2="-2.1392" width="0.01" layer="51"/>
<wire x1="2.0855" y1="-2.1776" x2="2.1087" y2="-2.1584" width="0.01" layer="51"/>
<wire x1="2.074" y1="-2.1872" x2="2.0855" y2="-2.1776" width="0.01" layer="51"/>
<wire x1="2.0855" y1="-3.8968" x2="2.074" y2="-3.8872" width="0.01" layer="51"/>
<wire x1="2.1087" y1="-3.916" x2="2.0855" y2="-3.8968" width="0.01" layer="51"/>
<wire x1="2.1321" y1="-3.9352" x2="2.1087" y2="-3.916" width="0.01" layer="51"/>
<wire x1="2.1438" y1="-3.9448" x2="2.1321" y2="-3.9352" width="0.01" layer="51"/>
<wire x1="2.1949" y1="-3.9862" x2="2.1438" y2="-3.9448" width="0.01" layer="51"/>
<wire x1="2.298" y1="-4.068" x2="2.1949" y2="-3.9862" width="0.01" layer="51"/>
<wire x1="2.4017" y1="-4.1481" x2="2.298" y2="-4.068" width="0.01" layer="51"/>
<wire x1="2.4536" y1="-4.1872" x2="2.4017" y2="-4.1481" width="0.01" layer="51"/>
<wire x1="2.4536" y1="-4.1872" x2="1.4464" y2="-4.1872" width="0.01" layer="51"/>
<wire x1="1.4426" y1="-4.1872" x2="1.4464" y2="-4.1872" width="0.01" layer="51"/>
<wire x1="1.4347" y1="-4.187" x2="1.4426" y2="-4.1872" width="0.01" layer="51"/>
<wire x1="1.4266" y1="-4.1868" x2="1.4347" y2="-4.187" width="0.01" layer="51"/>
<wire x1="1.4226" y1="-4.1866" x2="1.4266" y2="-4.1868" width="0.01" layer="51"/>
<wire x1="1.4184" y1="-4.1863" x2="1.4226" y2="-4.1866" width="0.01" layer="51"/>
<wire x1="1.4101" y1="-4.1858" x2="1.4184" y2="-4.1863" width="0.01" layer="51"/>
<wire x1="1.4016" y1="-4.185" x2="1.4101" y2="-4.1858" width="0.01" layer="51"/>
<wire x1="1.3929" y1="-4.1842" x2="1.4016" y2="-4.185" width="0.01" layer="51"/>
<wire x1="1.3841" y1="-4.1832" x2="1.3929" y2="-4.1842" width="0.01" layer="51"/>
<wire x1="1.3752" y1="-4.1821" x2="1.3841" y2="-4.1832" width="0.01" layer="51"/>
<wire x1="1.3707" y1="-4.1814" x2="1.3752" y2="-4.1821" width="0.01" layer="51"/>
<wire x1="1.3661" y1="-4.1808" x2="1.3707" y2="-4.1814" width="0.01" layer="51"/>
<wire x1="1.3569" y1="-4.1794" x2="1.3661" y2="-4.1808" width="0.01" layer="51"/>
<wire x1="1.3476" y1="-4.1778" x2="1.3569" y2="-4.1794" width="0.01" layer="51"/>
<wire x1="1.3382" y1="-4.1761" x2="1.3476" y2="-4.1778" width="0.01" layer="51"/>
<wire x1="1.3286" y1="-4.1743" x2="1.3382" y2="-4.1761" width="0.01" layer="51"/>
<wire x1="1.3189" y1="-4.1723" x2="1.3286" y2="-4.1743" width="0.01" layer="51"/>
<wire x1="1.314" y1="-4.1713" x2="1.3189" y2="-4.1723" width="0.01" layer="51"/>
<wire x1="1.3091" y1="-4.1702" x2="1.314" y2="-4.1713" width="0.01" layer="51"/>
<wire x1="1.2992" y1="-4.168" x2="1.3091" y2="-4.1702" width="0.01" layer="51"/>
<wire x1="1.2893" y1="-4.1656" x2="1.2992" y2="-4.168" width="0.01" layer="51"/>
<wire x1="1.2842" y1="-4.1644" x2="1.2893" y2="-4.1656" width="0.01" layer="51"/>
<wire x1="1.2842" y1="-4.1644" x2="1.0929" y2="-3.8872" width="0.01" layer="51"/>
<wire x1="0.3" y1="-1.3872" x2="1.0929" y2="-1.3872" width="0.01" layer="51"/>
<wire x1="1.0929" y1="-1.3872" x2="2.074" y2="-1.3872" width="0.01" layer="51"/>
<wire x1="0.3" y1="0.6128" x2="0.3" y2="0.3128" width="0.01" layer="51"/>
<wire x1="0.3" y1="0.3128" x2="0.3" y2="-1.3872" width="0.01" layer="51"/>
<wire x1="0.3" y1="0.6128" x2="1.0929" y2="0.6128" width="0.01" layer="51"/>
<wire x1="1.0983" y1="0.6128" x2="1.0929" y2="0.6128" width="0.01" layer="51"/>
<wire x1="1.1093" y1="0.6126" x2="1.0983" y2="0.6128" width="0.01" layer="51"/>
<wire x1="1.1202" y1="0.6124" x2="1.1093" y2="0.6126" width="0.01" layer="51"/>
<wire x1="1.1256" y1="0.6122" x2="1.1202" y2="0.6124" width="0.01" layer="51"/>
<wire x1="1.131" y1="0.6119" x2="1.1256" y2="0.6122" width="0.01" layer="51"/>
<wire x1="1.1419" y1="0.6114" x2="1.131" y2="0.6119" width="0.01" layer="51"/>
<wire x1="1.1527" y1="0.6106" x2="1.1419" y2="0.6114" width="0.01" layer="51"/>
<wire x1="1.1636" y1="0.6098" x2="1.1527" y2="0.6106" width="0.01" layer="51"/>
<wire x1="1.1743" y1="0.6088" x2="1.1636" y2="0.6098" width="0.01" layer="51"/>
<wire x1="1.1851" y1="0.6077" x2="1.1743" y2="0.6088" width="0.01" layer="51"/>
<wire x1="1.1904" y1="0.607" x2="1.1851" y2="0.6077" width="0.01" layer="51"/>
<wire x1="1.1958" y1="0.6064" x2="1.1904" y2="0.607" width="0.01" layer="51"/>
<wire x1="1.2064" y1="0.605" x2="1.1958" y2="0.6064" width="0.01" layer="51"/>
<wire x1="1.217" y1="0.6034" x2="1.2064" y2="0.605" width="0.01" layer="51"/>
<wire x1="1.2276" y1="0.6017" x2="1.217" y2="0.6034" width="0.01" layer="51"/>
<wire x1="1.238" y1="0.5999" x2="1.2276" y2="0.6017" width="0.01" layer="51"/>
<wire x1="1.2536" y1="0.5969" x2="1.238" y2="0.5999" width="0.01" layer="51"/>
<wire x1="1.2588" y1="0.5958" x2="1.2536" y2="0.5969" width="0.01" layer="51"/>
<wire x1="1.269" y1="0.5936" x2="1.2588" y2="0.5958" width="0.01" layer="51"/>
<wire x1="1.2792" y1="0.5912" x2="1.269" y2="0.5936" width="0.01" layer="51"/>
<wire x1="1.2842" y1="0.59" x2="1.2792" y2="0.5912" width="0.01" layer="51"/>
<wire x1="0.3" y1="0.3128" x2="1.0929" y2="0.3128" width="0.01" layer="51"/>
<wire x1="1.0929" y1="0.3128" x2="2.074" y2="0.3128" width="0.01" layer="51"/>
<wire x1="1.0929" y1="0.3128" x2="1.2842" y2="0.59" width="0.01" layer="51"/>
<wire x1="1.2893" y1="0.5912" x2="1.2842" y2="0.59" width="0.01" layer="51"/>
<wire x1="1.2992" y1="0.5936" x2="1.2893" y2="0.5912" width="0.01" layer="51"/>
<wire x1="1.3091" y1="0.5958" x2="1.2992" y2="0.5936" width="0.01" layer="51"/>
<wire x1="1.314" y1="0.5969" x2="1.3091" y2="0.5958" width="0.01" layer="51"/>
<wire x1="1.3189" y1="0.5979" x2="1.314" y2="0.5969" width="0.01" layer="51"/>
<wire x1="1.3286" y1="0.5999" x2="1.3189" y2="0.5979" width="0.01" layer="51"/>
<wire x1="1.3382" y1="0.6017" x2="1.3286" y2="0.5999" width="0.01" layer="51"/>
<wire x1="1.3476" y1="0.6034" x2="1.3382" y2="0.6017" width="0.01" layer="51"/>
<wire x1="1.3569" y1="0.605" x2="1.3476" y2="0.6034" width="0.01" layer="51"/>
<wire x1="1.3661" y1="0.6064" x2="1.3569" y2="0.605" width="0.01" layer="51"/>
<wire x1="1.3707" y1="0.607" x2="1.3661" y2="0.6064" width="0.01" layer="51"/>
<wire x1="1.3752" y1="0.6077" x2="1.3707" y2="0.607" width="0.01" layer="51"/>
<wire x1="1.3841" y1="0.6088" x2="1.3752" y2="0.6077" width="0.01" layer="51"/>
<wire x1="1.3929" y1="0.6098" x2="1.3841" y2="0.6088" width="0.01" layer="51"/>
<wire x1="1.4016" y1="0.6106" x2="1.3929" y2="0.6098" width="0.01" layer="51"/>
<wire x1="1.4101" y1="0.6114" x2="1.4016" y2="0.6106" width="0.01" layer="51"/>
<wire x1="1.4184" y1="0.6119" x2="1.4101" y2="0.6114" width="0.01" layer="51"/>
<wire x1="1.4226" y1="0.6122" x2="1.4184" y2="0.6119" width="0.01" layer="51"/>
<wire x1="1.4266" y1="0.6124" x2="1.4226" y2="0.6122" width="0.01" layer="51"/>
<wire x1="1.4347" y1="0.6126" x2="1.4266" y2="0.6124" width="0.01" layer="51"/>
<wire x1="1.4426" y1="0.6128" x2="1.4347" y2="0.6126" width="0.01" layer="51"/>
<wire x1="1.4464" y1="0.6128" x2="1.4426" y2="0.6128" width="0.01" layer="51"/>
<wire x1="1.4464" y1="0.6128" x2="2.4536" y2="0.6128" width="0.01" layer="51"/>
<wire x1="2.4017" y1="0.5737" x2="2.4536" y2="0.6128" width="0.01" layer="51"/>
<wire x1="2.298" y1="0.4936" x2="2.4017" y2="0.5737" width="0.01" layer="51"/>
<wire x1="2.1949" y1="0.4118" x2="2.298" y2="0.4936" width="0.01" layer="51"/>
<wire x1="2.1438" y1="0.3704" x2="2.1949" y2="0.4118" width="0.01" layer="51"/>
<wire x1="2.1321" y1="0.3608" x2="2.1438" y2="0.3704" width="0.01" layer="51"/>
<wire x1="2.1087" y1="0.3416" x2="2.1321" y2="0.3608" width="0.01" layer="51"/>
<wire x1="2.0855" y1="0.3224" x2="2.1087" y2="0.3416" width="0.01" layer="51"/>
<wire x1="2.074" y1="0.3128" x2="2.0855" y2="0.3224" width="0.01" layer="51"/>
<wire x1="2.0855" y1="-1.3968" x2="2.074" y2="-1.3872" width="0.01" layer="51"/>
<wire x1="2.1087" y1="-1.416" x2="2.0855" y2="-1.3968" width="0.01" layer="51"/>
<wire x1="2.1321" y1="-1.4352" x2="2.1087" y2="-1.416" width="0.01" layer="51"/>
<wire x1="2.1438" y1="-1.4448" x2="2.1321" y2="-1.4352" width="0.01" layer="51"/>
<wire x1="2.1949" y1="-1.4862" x2="2.1438" y2="-1.4448" width="0.01" layer="51"/>
<wire x1="2.298" y1="-1.568" x2="2.1949" y2="-1.4862" width="0.01" layer="51"/>
<wire x1="2.4017" y1="-1.6481" x2="2.298" y2="-1.568" width="0.01" layer="51"/>
<wire x1="2.4536" y1="-1.6872" x2="2.4017" y2="-1.6481" width="0.01" layer="51"/>
<wire x1="2.4536" y1="-1.6872" x2="1.4464" y2="-1.6872" width="0.01" layer="51"/>
<wire x1="1.4426" y1="-1.6872" x2="1.4464" y2="-1.6872" width="0.01" layer="51"/>
<wire x1="1.4347" y1="-1.687" x2="1.4426" y2="-1.6872" width="0.01" layer="51"/>
<wire x1="1.4266" y1="-1.6868" x2="1.4347" y2="-1.687" width="0.01" layer="51"/>
<wire x1="1.4226" y1="-1.6866" x2="1.4266" y2="-1.6868" width="0.01" layer="51"/>
<wire x1="1.4184" y1="-1.6863" x2="1.4226" y2="-1.6866" width="0.01" layer="51"/>
<wire x1="1.4101" y1="-1.6858" x2="1.4184" y2="-1.6863" width="0.01" layer="51"/>
<wire x1="1.4016" y1="-1.685" x2="1.4101" y2="-1.6858" width="0.01" layer="51"/>
<wire x1="1.3929" y1="-1.6842" x2="1.4016" y2="-1.685" width="0.01" layer="51"/>
<wire x1="1.3841" y1="-1.6832" x2="1.3929" y2="-1.6842" width="0.01" layer="51"/>
<wire x1="1.3752" y1="-1.6821" x2="1.3841" y2="-1.6832" width="0.01" layer="51"/>
<wire x1="1.3707" y1="-1.6814" x2="1.3752" y2="-1.6821" width="0.01" layer="51"/>
<wire x1="1.3661" y1="-1.6808" x2="1.3707" y2="-1.6814" width="0.01" layer="51"/>
<wire x1="1.3569" y1="-1.6794" x2="1.3661" y2="-1.6808" width="0.01" layer="51"/>
<wire x1="1.3476" y1="-1.6778" x2="1.3569" y2="-1.6794" width="0.01" layer="51"/>
<wire x1="1.3382" y1="-1.6761" x2="1.3476" y2="-1.6778" width="0.01" layer="51"/>
<wire x1="1.3286" y1="-1.6743" x2="1.3382" y2="-1.6761" width="0.01" layer="51"/>
<wire x1="1.3189" y1="-1.6723" x2="1.3286" y2="-1.6743" width="0.01" layer="51"/>
<wire x1="1.314" y1="-1.6713" x2="1.3189" y2="-1.6723" width="0.01" layer="51"/>
<wire x1="1.3091" y1="-1.6702" x2="1.314" y2="-1.6713" width="0.01" layer="51"/>
<wire x1="1.2992" y1="-1.668" x2="1.3091" y2="-1.6702" width="0.01" layer="51"/>
<wire x1="1.2893" y1="-1.6656" x2="1.2992" y2="-1.668" width="0.01" layer="51"/>
<wire x1="1.2842" y1="-1.6644" x2="1.2893" y2="-1.6656" width="0.01" layer="51"/>
<wire x1="1.2842" y1="-1.6644" x2="1.0929" y2="-1.3872" width="0.01" layer="51"/>
<wire x1="0.3" y1="1.1128" x2="1.0929" y2="1.1128" width="0.01" layer="51"/>
<wire x1="1.0929" y1="1.1128" x2="2.074" y2="1.1128" width="0.01" layer="51"/>
<wire x1="1.0929" y1="3.3128" x2="1.0929" y2="3.1128" width="0.01" layer="51"/>
<wire x1="1.2792" y1="3.3344" x2="1.2842" y2="3.3356" width="0.01" layer="51"/>
<wire x1="1.269" y1="3.332" x2="1.2792" y2="3.3344" width="0.01" layer="51"/>
<wire x1="1.2588" y1="3.3298" x2="1.269" y2="3.332" width="0.01" layer="51"/>
<wire x1="1.2536" y1="3.3287" x2="1.2588" y2="3.3298" width="0.01" layer="51"/>
<wire x1="1.238" y1="3.3257" x2="1.2536" y2="3.3287" width="0.01" layer="51"/>
<wire x1="1.2276" y1="3.3239" x2="1.238" y2="3.3257" width="0.01" layer="51"/>
<wire x1="1.217" y1="3.3222" x2="1.2276" y2="3.3239" width="0.01" layer="51"/>
<wire x1="1.2064" y1="3.3206" x2="1.217" y2="3.3222" width="0.01" layer="51"/>
<wire x1="1.1958" y1="3.3192" x2="1.2064" y2="3.3206" width="0.01" layer="51"/>
<wire x1="1.1904" y1="3.3186" x2="1.1958" y2="3.3192" width="0.01" layer="51"/>
<wire x1="1.1851" y1="3.3179" x2="1.1904" y2="3.3186" width="0.01" layer="51"/>
<wire x1="1.1743" y1="3.3168" x2="1.1851" y2="3.3179" width="0.01" layer="51"/>
<wire x1="1.1636" y1="3.3158" x2="1.1743" y2="3.3168" width="0.01" layer="51"/>
<wire x1="1.1527" y1="3.315" x2="1.1636" y2="3.3158" width="0.01" layer="51"/>
<wire x1="1.1419" y1="3.3142" x2="1.1527" y2="3.315" width="0.01" layer="51"/>
<wire x1="1.131" y1="3.3137" x2="1.1419" y2="3.3142" width="0.01" layer="51"/>
<wire x1="1.1256" y1="3.3134" x2="1.131" y2="3.3137" width="0.01" layer="51"/>
<wire x1="1.1202" y1="3.3132" x2="1.1256" y2="3.3134" width="0.01" layer="51"/>
<wire x1="1.1093" y1="3.313" x2="1.1202" y2="3.3132" width="0.01" layer="51"/>
<wire x1="1.0983" y1="3.3128" x2="1.1093" y2="3.313" width="0.01" layer="51"/>
<wire x1="1.0929" y1="3.3128" x2="1.0983" y2="3.3128" width="0.01" layer="51"/>
<wire x1="2.4536" y1="3.3128" x2="1.4464" y2="3.3128" width="0.01" layer="51"/>
<wire x1="1.4464" y1="3.3128" x2="1.4426" y2="3.3128" width="0.01" layer="51"/>
<wire x1="1.4347" y1="3.313" x2="1.4426" y2="3.3128" width="0.01" layer="51"/>
<wire x1="1.4266" y1="3.3132" x2="1.4347" y2="3.313" width="0.01" layer="51"/>
<wire x1="1.4226" y1="3.3134" x2="1.4266" y2="3.3132" width="0.01" layer="51"/>
<wire x1="1.4184" y1="3.3137" x2="1.4226" y2="3.3134" width="0.01" layer="51"/>
<wire x1="1.4101" y1="3.3142" x2="1.4184" y2="3.3137" width="0.01" layer="51"/>
<wire x1="1.4016" y1="3.315" x2="1.4101" y2="3.3142" width="0.01" layer="51"/>
<wire x1="1.3929" y1="3.3158" x2="1.4016" y2="3.315" width="0.01" layer="51"/>
<wire x1="1.3841" y1="3.3168" x2="1.3929" y2="3.3158" width="0.01" layer="51"/>
<wire x1="1.3752" y1="3.3179" x2="1.3841" y2="3.3168" width="0.01" layer="51"/>
<wire x1="1.3707" y1="3.3186" x2="1.3752" y2="3.3179" width="0.01" layer="51"/>
<wire x1="1.3661" y1="3.3192" x2="1.3707" y2="3.3186" width="0.01" layer="51"/>
<wire x1="1.3569" y1="3.3206" x2="1.3661" y2="3.3192" width="0.01" layer="51"/>
<wire x1="1.3476" y1="3.3222" x2="1.3569" y2="3.3206" width="0.01" layer="51"/>
<wire x1="1.3382" y1="3.3239" x2="1.3476" y2="3.3222" width="0.01" layer="51"/>
<wire x1="1.3286" y1="3.3257" x2="1.3382" y2="3.3239" width="0.01" layer="51"/>
<wire x1="1.3189" y1="3.3277" x2="1.3286" y2="3.3257" width="0.01" layer="51"/>
<wire x1="1.314" y1="3.3287" x2="1.3189" y2="3.3277" width="0.01" layer="51"/>
<wire x1="1.3091" y1="3.3298" x2="1.314" y2="3.3287" width="0.01" layer="51"/>
<wire x1="1.2992" y1="3.332" x2="1.3091" y2="3.3298" width="0.01" layer="51"/>
<wire x1="1.2893" y1="3.3344" x2="1.2992" y2="3.332" width="0.01" layer="51"/>
<wire x1="1.2842" y1="3.3356" x2="1.2893" y2="3.3344" width="0.01" layer="51"/>
<wire x1="1.4464" y1="3.3128" x2="1.4464" y2="3.1128" width="0.01" layer="51"/>
<wire x1="0.3" y1="3.1128" x2="0.3" y2="2.8128" width="0.01" layer="51"/>
<wire x1="0.3" y1="2.8128" x2="0.3" y2="1.1128" width="0.01" layer="51"/>
<wire x1="0.3" y1="3.1128" x2="1.0929" y2="3.1128" width="0.01" layer="51"/>
<wire x1="1.0983" y1="3.1128" x2="1.0929" y2="3.1128" width="0.01" layer="51"/>
<wire x1="1.1093" y1="3.1126" x2="1.0983" y2="3.1128" width="0.01" layer="51"/>
<wire x1="1.1202" y1="3.1124" x2="1.1093" y2="3.1126" width="0.01" layer="51"/>
<wire x1="1.1256" y1="3.1122" x2="1.1202" y2="3.1124" width="0.01" layer="51"/>
<wire x1="1.131" y1="3.1119" x2="1.1256" y2="3.1122" width="0.01" layer="51"/>
<wire x1="1.1419" y1="3.1114" x2="1.131" y2="3.1119" width="0.01" layer="51"/>
<wire x1="1.1527" y1="3.1106" x2="1.1419" y2="3.1114" width="0.01" layer="51"/>
<wire x1="1.1636" y1="3.1098" x2="1.1527" y2="3.1106" width="0.01" layer="51"/>
<wire x1="1.1743" y1="3.1088" x2="1.1636" y2="3.1098" width="0.01" layer="51"/>
<wire x1="1.1851" y1="3.1077" x2="1.1743" y2="3.1088" width="0.01" layer="51"/>
<wire x1="1.1904" y1="3.107" x2="1.1851" y2="3.1077" width="0.01" layer="51"/>
<wire x1="1.1958" y1="3.1064" x2="1.1904" y2="3.107" width="0.01" layer="51"/>
<wire x1="1.2064" y1="3.105" x2="1.1958" y2="3.1064" width="0.01" layer="51"/>
<wire x1="1.217" y1="3.1034" x2="1.2064" y2="3.105" width="0.01" layer="51"/>
<wire x1="1.2276" y1="3.1017" x2="1.217" y2="3.1034" width="0.01" layer="51"/>
<wire x1="1.238" y1="3.0999" x2="1.2276" y2="3.1017" width="0.01" layer="51"/>
<wire x1="1.2536" y1="3.0969" x2="1.238" y2="3.0999" width="0.01" layer="51"/>
<wire x1="1.2588" y1="3.0958" x2="1.2536" y2="3.0969" width="0.01" layer="51"/>
<wire x1="1.269" y1="3.0936" x2="1.2588" y2="3.0958" width="0.01" layer="51"/>
<wire x1="1.2792" y1="3.0912" x2="1.269" y2="3.0936" width="0.01" layer="51"/>
<wire x1="1.2842" y1="3.09" x2="1.2792" y2="3.0912" width="0.01" layer="51"/>
<wire x1="0.3" y1="2.8128" x2="1.0929" y2="2.8128" width="0.01" layer="51"/>
<wire x1="1.0929" y1="2.8128" x2="2.074" y2="2.8128" width="0.01" layer="51"/>
<wire x1="1.0929" y1="2.8128" x2="1.2842" y2="3.09" width="0.01" layer="51"/>
<wire x1="1.2893" y1="3.0912" x2="1.2842" y2="3.09" width="0.01" layer="51"/>
<wire x1="1.2992" y1="3.0936" x2="1.2893" y2="3.0912" width="0.01" layer="51"/>
<wire x1="1.3091" y1="3.0958" x2="1.2992" y2="3.0936" width="0.01" layer="51"/>
<wire x1="1.314" y1="3.0969" x2="1.3091" y2="3.0958" width="0.01" layer="51"/>
<wire x1="1.3189" y1="3.0979" x2="1.314" y2="3.0969" width="0.01" layer="51"/>
<wire x1="1.3286" y1="3.0999" x2="1.3189" y2="3.0979" width="0.01" layer="51"/>
<wire x1="1.3382" y1="3.1017" x2="1.3286" y2="3.0999" width="0.01" layer="51"/>
<wire x1="1.3476" y1="3.1034" x2="1.3382" y2="3.1017" width="0.01" layer="51"/>
<wire x1="1.3569" y1="3.105" x2="1.3476" y2="3.1034" width="0.01" layer="51"/>
<wire x1="1.3661" y1="3.1064" x2="1.3569" y2="3.105" width="0.01" layer="51"/>
<wire x1="1.3707" y1="3.107" x2="1.3661" y2="3.1064" width="0.01" layer="51"/>
<wire x1="1.3752" y1="3.1077" x2="1.3707" y2="3.107" width="0.01" layer="51"/>
<wire x1="1.3841" y1="3.1088" x2="1.3752" y2="3.1077" width="0.01" layer="51"/>
<wire x1="1.3929" y1="3.1098" x2="1.3841" y2="3.1088" width="0.01" layer="51"/>
<wire x1="1.4016" y1="3.1106" x2="1.3929" y2="3.1098" width="0.01" layer="51"/>
<wire x1="1.4101" y1="3.1114" x2="1.4016" y2="3.1106" width="0.01" layer="51"/>
<wire x1="1.4184" y1="3.1119" x2="1.4101" y2="3.1114" width="0.01" layer="51"/>
<wire x1="1.4226" y1="3.1122" x2="1.4184" y2="3.1119" width="0.01" layer="51"/>
<wire x1="1.4266" y1="3.1124" x2="1.4226" y2="3.1122" width="0.01" layer="51"/>
<wire x1="1.4347" y1="3.1126" x2="1.4266" y2="3.1124" width="0.01" layer="51"/>
<wire x1="1.4426" y1="3.1128" x2="1.4347" y2="3.1126" width="0.01" layer="51"/>
<wire x1="1.4464" y1="3.1128" x2="1.4426" y2="3.1128" width="0.01" layer="51"/>
<wire x1="1.4464" y1="3.1128" x2="2.4536" y2="3.1128" width="0.01" layer="51"/>
<wire x1="2.4017" y1="3.0737" x2="2.4536" y2="3.1128" width="0.01" layer="51"/>
<wire x1="2.298" y1="2.9936" x2="2.4017" y2="3.0737" width="0.01" layer="51"/>
<wire x1="2.1949" y1="2.9118" x2="2.298" y2="2.9936" width="0.01" layer="51"/>
<wire x1="2.1438" y1="2.8704" x2="2.1949" y2="2.9118" width="0.01" layer="51"/>
<wire x1="2.1321" y1="2.8608" x2="2.1438" y2="2.8704" width="0.01" layer="51"/>
<wire x1="2.1087" y1="2.8416" x2="2.1321" y2="2.8608" width="0.01" layer="51"/>
<wire x1="2.0855" y1="2.8224" x2="2.1087" y2="2.8416" width="0.01" layer="51"/>
<wire x1="2.074" y1="2.8128" x2="2.0855" y2="2.8224" width="0.01" layer="51"/>
<wire x1="2.0855" y1="1.1032" x2="2.074" y2="1.1128" width="0.01" layer="51"/>
<wire x1="2.1087" y1="1.084" x2="2.0855" y2="1.1032" width="0.01" layer="51"/>
<wire x1="2.1321" y1="1.0648" x2="2.1087" y2="1.084" width="0.01" layer="51"/>
<wire x1="2.1438" y1="1.0552" x2="2.1321" y2="1.0648" width="0.01" layer="51"/>
<wire x1="2.1949" y1="1.0138" x2="2.1438" y2="1.0552" width="0.01" layer="51"/>
<wire x1="2.298" y1="0.932" x2="2.1949" y2="1.0138" width="0.01" layer="51"/>
<wire x1="2.4017" y1="0.8519" x2="2.298" y2="0.932" width="0.01" layer="51"/>
<wire x1="2.4536" y1="0.8128" x2="2.4017" y2="0.8519" width="0.01" layer="51"/>
<wire x1="2.4536" y1="0.8128" x2="1.4464" y2="0.8128" width="0.01" layer="51"/>
<wire x1="1.4426" y1="0.8128" x2="1.4464" y2="0.8128" width="0.01" layer="51"/>
<wire x1="1.4347" y1="0.813" x2="1.4426" y2="0.8128" width="0.01" layer="51"/>
<wire x1="1.4266" y1="0.8132" x2="1.4347" y2="0.813" width="0.01" layer="51"/>
<wire x1="1.4226" y1="0.8134" x2="1.4266" y2="0.8132" width="0.01" layer="51"/>
<wire x1="1.4184" y1="0.8137" x2="1.4226" y2="0.8134" width="0.01" layer="51"/>
<wire x1="1.4101" y1="0.8142" x2="1.4184" y2="0.8137" width="0.01" layer="51"/>
<wire x1="1.4016" y1="0.815" x2="1.4101" y2="0.8142" width="0.01" layer="51"/>
<wire x1="1.3929" y1="0.8158" x2="1.4016" y2="0.815" width="0.01" layer="51"/>
<wire x1="1.3841" y1="0.8168" x2="1.3929" y2="0.8158" width="0.01" layer="51"/>
<wire x1="1.3752" y1="0.8179" x2="1.3841" y2="0.8168" width="0.01" layer="51"/>
<wire x1="1.3707" y1="0.8186" x2="1.3752" y2="0.8179" width="0.01" layer="51"/>
<wire x1="1.3661" y1="0.8192" x2="1.3707" y2="0.8186" width="0.01" layer="51"/>
<wire x1="1.3569" y1="0.8206" x2="1.3661" y2="0.8192" width="0.01" layer="51"/>
<wire x1="1.3476" y1="0.8222" x2="1.3569" y2="0.8206" width="0.01" layer="51"/>
<wire x1="1.3382" y1="0.8239" x2="1.3476" y2="0.8222" width="0.01" layer="51"/>
<wire x1="1.3286" y1="0.8257" x2="1.3382" y2="0.8239" width="0.01" layer="51"/>
<wire x1="1.3189" y1="0.8277" x2="1.3286" y2="0.8257" width="0.01" layer="51"/>
<wire x1="1.314" y1="0.8287" x2="1.3189" y2="0.8277" width="0.01" layer="51"/>
<wire x1="1.3091" y1="0.8298" x2="1.314" y2="0.8287" width="0.01" layer="51"/>
<wire x1="1.2992" y1="0.832" x2="1.3091" y2="0.8298" width="0.01" layer="51"/>
<wire x1="1.2893" y1="0.8344" x2="1.2992" y2="0.832" width="0.01" layer="51"/>
<wire x1="1.2842" y1="0.8356" x2="1.2893" y2="0.8344" width="0.01" layer="51"/>
<wire x1="1.2842" y1="0.8356" x2="1.0929" y2="1.1128" width="0.01" layer="51"/>
<wire x1="-1.0243" y1="-0.5372" x2="1.6243" y2="-0.5372" width="0.01" layer="51"/>
<wire x1="-1.0243" y1="-3.0372" x2="1.6243" y2="-3.0372" width="0.01" layer="51"/>
<wire x1="-1.0243" y1="4.4628" x2="1.6243" y2="4.4628" width="0.01" layer="51"/>
<wire x1="0.3" y1="-4.3615" x2="0.3" y2="5.7871" width="0.01" layer="51"/>
<wire x1="-1.0243" y1="1.9628" x2="1.6243" y2="1.9628" width="0.01" layer="51"/>
<pad name="L1" x="1.3" y="4.5128" drill="1.1" shape="long" rot="R180"/>
<pad name="L2" x="-3.7" y="2.0128" drill="1.1" shape="long"/>
<pad name="L3" x="1.3" y="-0.4872" drill="1.1" shape="long"/>
<pad name="L4" x="-3.7" y="-2.9872" drill="1.1" shape="long"/>
<text x="-5.8" y="6.8128" size="2" layer="25" font="vector" ratio="10">&gt;NAME</text>
<text x="-5.8" y="-8.7872" size="2" layer="27" font="vector" ratio="10">&gt;VALUE</text>
<text x="9" y="4.0128" size="2" layer="21" font="vector" ratio="10" rot="R90">1</text>
</package>
<package name="P-250-202">
<wire x1="2.0222" y1="-2.3748" x2="2.3192" y2="-2.5581" width="0.01" layer="51"/>
<wire x1="2.3192" y1="0.5581" x2="2.0222" y2="0.3748" width="0.01" layer="51"/>
<wire x1="1.7393" y1="-2.5" x2="2.4464" y2="-2.5" width="0.01" layer="51"/>
<wire x1="2.4464" y1="0.5" x2="1.7393" y2="0.5" width="0.01" layer="51"/>
<wire x1="2.0222" y1="1.1252" x2="2.3192" y2="0.9419" width="0.01" layer="51"/>
<wire x1="2.3192" y1="4.0581" x2="2.0222" y2="3.8748" width="0.01" layer="51"/>
<wire x1="1.7393" y1="1" x2="2.4464" y2="1" width="0.01" layer="51"/>
<wire x1="2.4464" y1="4" x2="1.7393" y2="4" width="0.01" layer="51"/>
<wire x1="-5.2826" y1="4.25" x2="-5.2826" y2="-4.25" width="0.01" layer="51"/>
<wire x1="-6" y1="4.25" x2="-6" y2="-4.25" width="0.2" layer="21"/>
<wire x1="-5.85" y1="4.25" x2="-5.85" y2="-4.25" width="0.01" layer="51"/>
<wire x1="6" y1="4.25" x2="-6" y2="4.25" width="0.2" layer="21"/>
<wire x1="-5.8" y1="4.25" x2="-5.8" y2="1.75" width="0.01" layer="51"/>
<wire x1="5.8" y1="4.25" x2="5.8" y2="1.75" width="0.01" layer="51"/>
<wire x1="-5.2" y1="4.25" x2="-5.2" y2="1.75" width="0.01" layer="51"/>
<wire x1="5.2" y1="1.75" x2="6" y2="1.75" width="0.01" layer="51"/>
<wire x1="-6" y1="1.75" x2="-5.2" y2="1.75" width="0.01" layer="51"/>
<wire x1="5.2" y1="4.25" x2="5.2" y2="1.75" width="0.01" layer="51"/>
<wire x1="6" y1="4.25" x2="6" y2="-4.25" width="0.2" layer="21"/>
<wire x1="6" y1="0.75" x2="5.8" y2="0.75" width="0.01" layer="51"/>
<wire x1="5.8" y1="0.75" x2="5.2" y2="0.75" width="0.01" layer="51"/>
<wire x1="-5.8" y1="0.75" x2="-5.8" y2="-1.75" width="0.01" layer="51"/>
<wire x1="5.8" y1="0.75" x2="5.8" y2="-1.75" width="0.01" layer="51"/>
<wire x1="-5.2" y1="0.75" x2="-5.2" y2="-1.75" width="0.01" layer="51"/>
<wire x1="5.2" y1="-1.75" x2="6" y2="-1.75" width="0.01" layer="51"/>
<wire x1="-6" y1="-1.75" x2="-5.2" y2="-1.75" width="0.01" layer="51"/>
<wire x1="-5.2" y1="0.75" x2="-6" y2="0.75" width="0.01" layer="51"/>
<wire x1="5.2" y1="0.75" x2="5.2" y2="-1.75" width="0.01" layer="51"/>
<wire x1="-5.8" y1="-2.75" x2="-5.8" y2="-4.25" width="0.01" layer="51"/>
<wire x1="-5.2" y1="-2.75" x2="-5.2" y2="-4.25" width="0.01" layer="51"/>
<wire x1="5.2" y1="-2.75" x2="5.2" y2="-4.25" width="0.01" layer="51"/>
<wire x1="5.8" y1="-2.75" x2="5.8" y2="-4.25" width="0.01" layer="51"/>
<wire x1="-5.2" y1="-2.75" x2="-6" y2="-2.75" width="0.01" layer="51"/>
<wire x1="6" y1="-2.75" x2="5.2" y2="-2.75" width="0.01" layer="51"/>
<wire x1="0.75" y1="3.3" x2="0.75" y2="1.7" width="0.01" layer="51" curve="180"/>
<wire x1="1.6696" y1="-2.0213" x2="1.5492" y2="-1.8" width="0.01" layer="51"/>
<wire x1="1.8169" y1="-2.2072" x2="1.6696" y2="-2.0213" width="0.01" layer="51"/>
<wire x1="1.986" y1="-2.3513" x2="1.8169" y2="-2.2072" width="0.01" layer="51"/>
<wire x1="2.171" y1="-2.4485" x2="1.986" y2="-2.3513" width="0.01" layer="51"/>
<wire x1="2.3726" y1="-2.4964" x2="2.171" y2="-2.4485" width="0.01" layer="51"/>
<wire x1="2.5769" y1="-2.4886" x2="2.3726" y2="-2.4964" width="0.01" layer="51"/>
<wire x1="2.7764" y1="-2.4256" x2="2.5769" y2="-2.4886" width="0.01" layer="51"/>
<wire x1="2.9636" y1="-2.3096" x2="2.7764" y2="-2.4256" width="0.01" layer="51"/>
<wire x1="3.1316" y1="-2.145" x2="2.9636" y2="-2.3096" width="0.01" layer="51"/>
<wire x1="3.2742" y1="-1.9379" x2="3.1316" y2="-2.145" width="0.01" layer="51"/>
<wire x1="3.386" y1="-1.696" x2="3.2742" y2="-1.9379" width="0.01" layer="51"/>
<wire x1="3.463" y1="-1.4282" x2="3.386" y2="-1.696" width="0.01" layer="51"/>
<wire x1="3.5022" y1="-1.1445" x2="3.463" y2="-1.4282" width="0.01" layer="51"/>
<wire x1="3.5022" y1="-0.8555" x2="3.5022" y2="-1.1445" width="0.01" layer="51"/>
<wire x1="3.463" y1="-0.5718" x2="3.5022" y2="-0.8555" width="0.01" layer="51"/>
<wire x1="3.386" y1="-0.304" x2="3.463" y2="-0.5718" width="0.01" layer="51"/>
<wire x1="3.2742" y1="-0.0621" x2="3.386" y2="-0.304" width="0.01" layer="51"/>
<wire x1="3.1316" y1="0.145" x2="3.2742" y2="-0.0621" width="0.01" layer="51"/>
<wire x1="2.9636" y1="0.3096" x2="3.1316" y2="0.145" width="0.01" layer="51"/>
<wire x1="2.7764" y1="0.4256" x2="2.9636" y2="0.3096" width="0.01" layer="51"/>
<wire x1="2.5769" y1="0.4886" x2="2.7764" y2="0.4256" width="0.01" layer="51"/>
<wire x1="2.3726" y1="0.4964" x2="2.5769" y2="0.4886" width="0.01" layer="51"/>
<wire x1="2.171" y1="0.4485" x2="2.3726" y2="0.4964" width="0.01" layer="51"/>
<wire x1="1.986" y1="0.3513" x2="2.171" y2="0.4485" width="0.01" layer="51"/>
<wire x1="1.8169" y1="0.2072" x2="1.986" y2="0.3513" width="0.01" layer="51"/>
<wire x1="1.6696" y1="0.0213" x2="1.8169" y2="0.2072" width="0.01" layer="51"/>
<wire x1="1.5492" y1="-0.2" x2="1.6696" y2="0.0213" width="0.01" layer="51"/>
<wire x1="0.9697" y1="-2.0321" x2="0.8421" y2="-1.8" width="0.01" layer="51"/>
<wire x1="1.1268" y1="-2.2245" x2="0.9697" y2="-2.0321" width="0.01" layer="51"/>
<wire x1="1.3074" y1="-2.37" x2="1.1268" y2="-2.2245" width="0.01" layer="51"/>
<wire x1="1.5046" y1="-2.4628" x2="1.3074" y2="-2.37" width="0.01" layer="51"/>
<wire x1="1.7108" y1="-2.4995" x2="1.5046" y2="-2.4628" width="0.01" layer="51"/>
<wire x1="1.9181" y1="-2.4785" x2="1.7108" y2="-2.4995" width="0.01" layer="51"/>
<wire x1="2.1185" y1="-2.4009" x2="1.9181" y2="-2.4785" width="0.01" layer="51"/>
<wire x1="2.2947" y1="-2.278" x2="2.1185" y2="-2.4009" width="0.01" layer="51"/>
<wire x1="2.4517" y1="-2.1113" x2="2.2947" y2="-2.278" width="0.01" layer="51"/>
<wire x1="2.5844" y1="-1.9065" x2="2.4517" y2="-2.1113" width="0.01" layer="51"/>
<wire x1="2.6881" y1="-1.6707" x2="2.5844" y2="-1.9065" width="0.01" layer="51"/>
<wire x1="2.7592" y1="-1.4118" x2="2.6881" y2="-1.6707" width="0.01" layer="51"/>
<wire x1="2.7954" y1="-1.1389" x2="2.7592" y2="-1.4118" width="0.01" layer="51"/>
<wire x1="2.7954" y1="-0.8611" x2="2.7954" y2="-1.1389" width="0.01" layer="51"/>
<wire x1="2.7592" y1="-0.5882" x2="2.7954" y2="-0.8611" width="0.01" layer="51"/>
<wire x1="2.6881" y1="-0.3293" x2="2.7592" y2="-0.5882" width="0.01" layer="51"/>
<wire x1="2.5844" y1="-0.0935" x2="2.6881" y2="-0.3293" width="0.01" layer="51"/>
<wire x1="2.4517" y1="0.1113" x2="2.5844" y2="-0.0935" width="0.01" layer="51"/>
<wire x1="2.2947" y1="0.278" x2="2.4517" y2="0.1113" width="0.01" layer="51"/>
<wire x1="2.1185" y1="0.4009" x2="2.2947" y2="0.278" width="0.01" layer="51"/>
<wire x1="1.9181" y1="0.4785" x2="2.1185" y2="0.4009" width="0.01" layer="51"/>
<wire x1="1.7108" y1="0.4995" x2="1.9181" y2="0.4785" width="0.01" layer="51"/>
<wire x1="1.5046" y1="0.4628" x2="1.7108" y2="0.4995" width="0.01" layer="51"/>
<wire x1="1.3074" y1="0.37" x2="1.5046" y2="0.4628" width="0.01" layer="51"/>
<wire x1="1.1268" y1="0.2245" x2="1.3074" y2="0.37" width="0.01" layer="51"/>
<wire x1="0.9697" y1="0.0321" x2="1.1268" y2="0.2245" width="0.01" layer="51"/>
<wire x1="0.8421" y1="-0.2" x2="0.9697" y2="0.0321" width="0.01" layer="51"/>
<wire x1="1.6696" y1="1.4787" x2="1.5492" y2="1.7" width="0.01" layer="51"/>
<wire x1="1.8169" y1="1.2928" x2="1.6696" y2="1.4787" width="0.01" layer="51"/>
<wire x1="1.986" y1="1.1487" x2="1.8169" y2="1.2928" width="0.01" layer="51"/>
<wire x1="2.171" y1="1.0515" x2="1.986" y2="1.1487" width="0.01" layer="51"/>
<wire x1="2.3726" y1="1.0036" x2="2.171" y2="1.0515" width="0.01" layer="51"/>
<wire x1="2.5769" y1="1.0114" x2="2.3726" y2="1.0036" width="0.01" layer="51"/>
<wire x1="2.7764" y1="1.0744" x2="2.5769" y2="1.0114" width="0.01" layer="51"/>
<wire x1="2.9636" y1="1.1904" x2="2.7764" y2="1.0744" width="0.01" layer="51"/>
<wire x1="3.1316" y1="1.355" x2="2.9636" y2="1.1904" width="0.01" layer="51"/>
<wire x1="3.2742" y1="1.5621" x2="3.1316" y2="1.355" width="0.01" layer="51"/>
<wire x1="3.386" y1="1.804" x2="3.2742" y2="1.5621" width="0.01" layer="51"/>
<wire x1="3.463" y1="2.0718" x2="3.386" y2="1.804" width="0.01" layer="51"/>
<wire x1="3.5022" y1="2.3555" x2="3.463" y2="2.0718" width="0.01" layer="51"/>
<wire x1="3.5022" y1="2.6445" x2="3.5022" y2="2.3555" width="0.01" layer="51"/>
<wire x1="3.463" y1="2.9282" x2="3.5022" y2="2.6445" width="0.01" layer="51"/>
<wire x1="3.386" y1="3.196" x2="3.463" y2="2.9282" width="0.01" layer="51"/>
<wire x1="3.2742" y1="3.4379" x2="3.386" y2="3.196" width="0.01" layer="51"/>
<wire x1="3.1316" y1="3.645" x2="3.2742" y2="3.4379" width="0.01" layer="51"/>
<wire x1="2.9636" y1="3.8096" x2="3.1316" y2="3.645" width="0.01" layer="51"/>
<wire x1="2.7764" y1="3.9256" x2="2.9636" y2="3.8096" width="0.01" layer="51"/>
<wire x1="2.5769" y1="3.9886" x2="2.7764" y2="3.9256" width="0.01" layer="51"/>
<wire x1="2.3726" y1="3.9964" x2="2.5769" y2="3.9886" width="0.01" layer="51"/>
<wire x1="2.171" y1="3.9485" x2="2.3726" y2="3.9964" width="0.01" layer="51"/>
<wire x1="1.986" y1="3.8513" x2="2.171" y2="3.9485" width="0.01" layer="51"/>
<wire x1="1.8169" y1="3.7072" x2="1.986" y2="3.8513" width="0.01" layer="51"/>
<wire x1="1.6696" y1="3.5213" x2="1.8169" y2="3.7072" width="0.01" layer="51"/>
<wire x1="1.5492" y1="3.3" x2="1.6696" y2="3.5213" width="0.01" layer="51"/>
<wire x1="0.9697" y1="1.4679" x2="0.8421" y2="1.7" width="0.01" layer="51"/>
<wire x1="1.1268" y1="1.2755" x2="0.9697" y2="1.4679" width="0.01" layer="51"/>
<wire x1="1.3074" y1="1.13" x2="1.1268" y2="1.2755" width="0.01" layer="51"/>
<wire x1="1.5046" y1="1.0372" x2="1.3074" y2="1.13" width="0.01" layer="51"/>
<wire x1="1.7108" y1="1.0005" x2="1.5046" y2="1.0372" width="0.01" layer="51"/>
<wire x1="1.9181" y1="1.0215" x2="1.7108" y2="1.0005" width="0.01" layer="51"/>
<wire x1="2.1185" y1="1.0991" x2="1.9181" y2="1.0215" width="0.01" layer="51"/>
<wire x1="2.2947" y1="1.222" x2="2.1185" y2="1.0991" width="0.01" layer="51"/>
<wire x1="2.4517" y1="1.3887" x2="2.2947" y2="1.222" width="0.01" layer="51"/>
<wire x1="2.5844" y1="1.5935" x2="2.4517" y2="1.3887" width="0.01" layer="51"/>
<wire x1="2.6881" y1="1.8293" x2="2.5844" y2="1.5935" width="0.01" layer="51"/>
<wire x1="2.7592" y1="2.0882" x2="2.6881" y2="1.8293" width="0.01" layer="51"/>
<wire x1="2.7954" y1="2.3611" x2="2.7592" y2="2.0882" width="0.01" layer="51"/>
<wire x1="2.7954" y1="2.6389" x2="2.7954" y2="2.3611" width="0.01" layer="51"/>
<wire x1="2.7592" y1="2.9118" x2="2.7954" y2="2.6389" width="0.01" layer="51"/>
<wire x1="2.6881" y1="3.1707" x2="2.7592" y2="2.9118" width="0.01" layer="51"/>
<wire x1="2.5844" y1="3.4065" x2="2.6881" y2="3.1707" width="0.01" layer="51"/>
<wire x1="2.4517" y1="3.6113" x2="2.5844" y2="3.4065" width="0.01" layer="51"/>
<wire x1="2.2947" y1="3.778" x2="2.4517" y2="3.6113" width="0.01" layer="51"/>
<wire x1="2.1185" y1="3.9009" x2="2.2947" y2="3.778" width="0.01" layer="51"/>
<wire x1="1.9181" y1="3.9785" x2="2.1185" y2="3.9009" width="0.01" layer="51"/>
<wire x1="1.7108" y1="3.9995" x2="1.9181" y2="3.9785" width="0.01" layer="51"/>
<wire x1="1.5046" y1="3.9628" x2="1.7108" y2="3.9995" width="0.01" layer="51"/>
<wire x1="1.3074" y1="3.87" x2="1.5046" y2="3.9628" width="0.01" layer="51"/>
<wire x1="1.1268" y1="3.7245" x2="1.3074" y2="3.87" width="0.01" layer="51"/>
<wire x1="0.9697" y1="3.5321" x2="1.1268" y2="3.7245" width="0.01" layer="51"/>
<wire x1="0.8421" y1="3.3" x2="0.9697" y2="3.5321" width="0.01" layer="51"/>
<wire x1="0.8787" y1="3.3" x2="0.8787" y2="1.7" width="0.01" layer="51"/>
<wire x1="0.75" y1="1.35" x2="0.75" y2="1.7" width="0.01" layer="51"/>
<wire x1="1.6653" y1="1.6823" x2="1.6423" y2="1.7" width="0.01" layer="51"/>
<wire x1="1.7119" y1="1.6466" x2="1.6653" y2="1.6823" width="0.01" layer="51"/>
<wire x1="1.7596" y1="1.6103" x2="1.7119" y2="1.6466" width="0.01" layer="51"/>
<wire x1="1.7838" y1="1.5919" x2="1.7596" y2="1.6103" width="0.01" layer="51"/>
<wire x1="0.75" y1="3.65" x2="0.75" y2="3.3" width="0.01" layer="51"/>
<wire x1="1.1038" y1="3.6499" x2="1.0929" y2="3.65" width="0.01" layer="51"/>
<wire x1="1.1256" y1="3.6495" x2="1.1038" y2="3.6499" width="0.01" layer="51"/>
<wire x1="1.1473" y1="3.6485" x2="1.1256" y2="3.6495" width="0.01" layer="51"/>
<wire x1="1.1582" y1="3.6479" x2="1.1473" y2="3.6485" width="0.01" layer="51"/>
<wire x1="1.169" y1="3.6471" x2="1.1582" y2="3.6479" width="0.01" layer="51"/>
<wire x1="1.1904" y1="3.6452" x2="1.169" y2="3.6471" width="0.01" layer="51"/>
<wire x1="1.2117" y1="3.6428" x2="1.1904" y2="3.6452" width="0.01" layer="51"/>
<wire x1="1.2328" y1="3.64" x2="1.2117" y2="3.6428" width="0.01" layer="51"/>
<wire x1="1.2536" y1="3.6367" x2="1.2328" y2="3.64" width="0.01" layer="51"/>
<wire x1="1.2741" y1="3.633" x2="1.2536" y2="3.6367" width="0.01" layer="51"/>
<wire x1="1.2842" y1="3.631" x2="1.2741" y2="3.633" width="0.01" layer="51"/>
<wire x1="1.2943" y1="3.6288" x2="1.2842" y2="3.631" width="0.01" layer="51"/>
<wire x1="1.314" y1="3.6242" x2="1.2943" y2="3.6288" width="0.01" layer="51"/>
<wire x1="1.3334" y1="3.6192" x2="1.314" y2="3.6242" width="0.01" layer="51"/>
<wire x1="1.3523" y1="3.6137" x2="1.3334" y2="3.6192" width="0.01" layer="51"/>
<wire x1="1.3707" y1="3.6079" x2="1.3523" y2="3.6137" width="0.01" layer="51"/>
<wire x1="1.3885" y1="3.6016" x2="1.3707" y2="3.6079" width="0.01" layer="51"/>
<wire x1="1.3973" y1="3.5983" x2="1.3885" y2="3.6016" width="0.01" layer="51"/>
<wire x1="1.4059" y1="3.595" x2="1.3973" y2="3.5983" width="0.01" layer="51"/>
<wire x1="1.4226" y1="3.588" x2="1.4059" y2="3.595" width="0.01" layer="51"/>
<wire x1="1.4386" y1="3.5806" x2="1.4226" y2="3.588" width="0.01" layer="51"/>
<wire x1="1.4464" y1="3.5768" x2="1.4386" y2="3.5806" width="0.01" layer="51"/>
<wire x1="1.7596" y1="3.3897" x2="1.7838" y2="3.4081" width="0.01" layer="51"/>
<wire x1="1.7119" y1="3.3534" x2="1.7596" y2="3.3897" width="0.01" layer="51"/>
<wire x1="1.6653" y1="3.3177" x2="1.7119" y2="3.3534" width="0.01" layer="51"/>
<wire x1="1.6423" y1="3.3" x2="1.6653" y2="3.3177" width="0.01" layer="51"/>
<wire x1="1.6423" y1="1.7" x2="1.5492" y2="1.7" width="0.01" layer="51"/>
<wire x1="0.75" y1="1.7" x2="1.5492" y2="1.7" width="0.01" layer="51"/>
<wire x1="1.5492" y1="3.3" x2="0.75" y2="3.3" width="0.01" layer="51"/>
<wire x1="1.5492" y1="3.3" x2="1.6423" y2="3.3" width="0.01" layer="51"/>
<wire x1="0.8787" y1="-0.2" x2="0.8787" y2="-1.8" width="0.01" layer="51"/>
<wire x1="1.9241" y1="-2.1644" x2="1.7838" y2="-1.9081" width="0.01" layer="51"/>
<wire x1="2.0963" y1="-2.3783" x2="1.9241" y2="-2.1644" width="0.01" layer="51"/>
<wire x1="2.2941" y1="-2.5421" x2="2.0963" y2="-2.3783" width="0.01" layer="51"/>
<wire x1="2.5103" y1="-2.6499" x2="2.2941" y2="-2.5421" width="0.01" layer="51"/>
<wire x1="2.737" y1="-2.6977" x2="2.5103" y2="-2.6499" width="0.01" layer="51"/>
<wire x1="2.966" y1="-2.6837" x2="2.737" y2="-2.6977" width="0.01" layer="51"/>
<wire x1="3.189" y1="-2.6085" x2="2.966" y2="-2.6837" width="0.01" layer="51"/>
<wire x1="3.3978" y1="-2.4749" x2="3.189" y2="-2.6085" width="0.01" layer="51"/>
<wire x1="3.5849" y1="-2.2876" x2="3.3978" y2="-2.4749" width="0.01" layer="51"/>
<wire x1="3.7434" y1="-2.0535" x2="3.5849" y2="-2.2876" width="0.01" layer="51"/>
<wire x1="3.8677" y1="-1.7811" x2="3.7434" y2="-2.0535" width="0.01" layer="51"/>
<wire x1="3.9531" y1="-1.4803" x2="3.8677" y2="-1.7811" width="0.01" layer="51"/>
<wire x1="3.9966" y1="-1.1621" x2="3.9531" y2="-1.4803" width="0.01" layer="51"/>
<wire x1="3.9966" y1="-0.8379" x2="3.9966" y2="-1.1621" width="0.01" layer="51"/>
<wire x1="3.9531" y1="-0.5197" x2="3.9966" y2="-0.8379" width="0.01" layer="51"/>
<wire x1="3.8677" y1="-0.2189" x2="3.9531" y2="-0.5197" width="0.01" layer="51"/>
<wire x1="3.7434" y1="0.0535" x2="3.8677" y2="-0.2189" width="0.01" layer="51"/>
<wire x1="3.5849" y1="0.2876" x2="3.7434" y2="0.0535" width="0.01" layer="51"/>
<wire x1="3.3978" y1="0.4749" x2="3.5849" y2="0.2876" width="0.01" layer="51"/>
<wire x1="3.189" y1="0.6085" x2="3.3978" y2="0.4749" width="0.01" layer="51"/>
<wire x1="2.966" y1="0.6837" x2="3.189" y2="0.6085" width="0.01" layer="51"/>
<wire x1="2.737" y1="0.6977" x2="2.966" y2="0.6837" width="0.01" layer="51"/>
<wire x1="2.5103" y1="0.6499" x2="2.737" y2="0.6977" width="0.01" layer="51"/>
<wire x1="2.2941" y1="0.5421" x2="2.5103" y2="0.6499" width="0.01" layer="51"/>
<wire x1="2.0963" y1="0.3783" x2="2.2941" y2="0.5421" width="0.01" layer="51"/>
<wire x1="1.9241" y1="0.1644" x2="2.0963" y2="0.3783" width="0.01" layer="51"/>
<wire x1="1.7838" y1="-0.0919" x2="1.9241" y2="0.1644" width="0.01" layer="51"/>
<wire x1="1.7838" y1="1.5919" x2="1.4464" y2="1.4232" width="0.01" layer="51"/>
<wire x1="1.9241" y1="1.3356" x2="1.7838" y2="1.5919" width="0.01" layer="51"/>
<wire x1="2.0963" y1="1.1217" x2="1.9241" y2="1.3356" width="0.01" layer="51"/>
<wire x1="2.2941" y1="0.9579" x2="2.0963" y2="1.1217" width="0.01" layer="51"/>
<wire x1="2.5103" y1="0.8501" x2="2.2941" y2="0.9579" width="0.01" layer="51"/>
<wire x1="2.737" y1="0.8023" x2="2.5103" y2="0.8501" width="0.01" layer="51"/>
<wire x1="2.966" y1="0.8163" x2="2.737" y2="0.8023" width="0.01" layer="51"/>
<wire x1="3.189" y1="0.8915" x2="2.966" y2="0.8163" width="0.01" layer="51"/>
<wire x1="3.3978" y1="1.0251" x2="3.189" y2="0.8915" width="0.01" layer="51"/>
<wire x1="3.5849" y1="1.2124" x2="3.3978" y2="1.0251" width="0.01" layer="51"/>
<wire x1="3.7434" y1="1.4465" x2="3.5849" y2="1.2124" width="0.01" layer="51"/>
<wire x1="3.8677" y1="1.7189" x2="3.7434" y2="1.4465" width="0.01" layer="51"/>
<wire x1="3.9531" y1="2.0197" x2="3.8677" y2="1.7189" width="0.01" layer="51"/>
<wire x1="3.9966" y1="2.3379" x2="3.9531" y2="2.0197" width="0.01" layer="51"/>
<wire x1="3.9966" y1="2.6621" x2="3.9966" y2="2.3379" width="0.01" layer="51"/>
<wire x1="3.9531" y1="2.9803" x2="3.9966" y2="2.6621" width="0.01" layer="51"/>
<wire x1="3.8677" y1="3.2811" x2="3.9531" y2="2.9803" width="0.01" layer="51"/>
<wire x1="3.7434" y1="3.5535" x2="3.8677" y2="3.2811" width="0.01" layer="51"/>
<wire x1="3.5849" y1="3.7876" x2="3.7434" y2="3.5535" width="0.01" layer="51"/>
<wire x1="3.3978" y1="3.9749" x2="3.5849" y2="3.7876" width="0.01" layer="51"/>
<wire x1="3.189" y1="4.1085" x2="3.3978" y2="3.9749" width="0.01" layer="51"/>
<wire x1="2.966" y1="4.1837" x2="3.189" y2="4.1085" width="0.01" layer="51"/>
<wire x1="2.737" y1="4.1977" x2="2.966" y2="4.1837" width="0.2" layer="21"/>
<wire x1="2.5103" y1="4.1499" x2="2.737" y2="4.1977" width="0.2" layer="21"/>
<wire x1="2.2941" y1="4.0421" x2="2.5103" y2="4.1499" width="0.01" layer="51"/>
<wire x1="2.0963" y1="3.8783" x2="2.2941" y2="4.0421" width="0.01" layer="51"/>
<wire x1="1.9241" y1="3.6644" x2="2.0963" y2="3.8783" width="0.01" layer="51"/>
<wire x1="1.7838" y1="3.4081" x2="1.9241" y2="3.6644" width="0.01" layer="51"/>
<wire x1="1.4464" y1="3.5768" x2="1.7838" y2="3.4081" width="0.01" layer="51"/>
<wire x1="1.4464" y1="4.25" x2="1.4464" y2="3.5768" width="0.01" layer="51"/>
<wire x1="5.8536" y1="4.25" x2="5.8536" y2="-4.25" width="0.01" layer="51"/>
<wire x1="1.4386" y1="1.4194" x2="1.4464" y2="1.4232" width="0.01" layer="51"/>
<wire x1="1.4226" y1="1.412" x2="1.4386" y2="1.4194" width="0.01" layer="51"/>
<wire x1="1.4059" y1="1.405" x2="1.4226" y2="1.412" width="0.01" layer="51"/>
<wire x1="1.3973" y1="1.4017" x2="1.4059" y2="1.405" width="0.01" layer="51"/>
<wire x1="1.3885" y1="1.3984" x2="1.3973" y2="1.4017" width="0.01" layer="51"/>
<wire x1="1.3707" y1="1.3921" x2="1.3885" y2="1.3984" width="0.01" layer="51"/>
<wire x1="1.3523" y1="1.3863" x2="1.3707" y2="1.3921" width="0.01" layer="51"/>
<wire x1="1.3334" y1="1.3808" x2="1.3523" y2="1.3863" width="0.01" layer="51"/>
<wire x1="1.314" y1="1.3758" x2="1.3334" y2="1.3808" width="0.01" layer="51"/>
<wire x1="1.2943" y1="1.3712" x2="1.314" y2="1.3758" width="0.01" layer="51"/>
<wire x1="1.2842" y1="1.369" x2="1.2943" y2="1.3712" width="0.01" layer="51"/>
<wire x1="1.2741" y1="1.367" x2="1.2842" y2="1.369" width="0.01" layer="51"/>
<wire x1="1.2536" y1="1.3633" x2="1.2741" y2="1.367" width="0.01" layer="51"/>
<wire x1="1.2328" y1="1.36" x2="1.2536" y2="1.3633" width="0.01" layer="51"/>
<wire x1="1.2117" y1="1.3572" x2="1.2328" y2="1.36" width="0.01" layer="51"/>
<wire x1="1.1904" y1="1.3548" x2="1.2117" y2="1.3572" width="0.01" layer="51"/>
<wire x1="1.169" y1="1.3529" x2="1.1904" y2="1.3548" width="0.01" layer="51"/>
<wire x1="1.1582" y1="1.3521" x2="1.169" y2="1.3529" width="0.01" layer="51"/>
<wire x1="1.1473" y1="1.3515" x2="1.1582" y2="1.3521" width="0.01" layer="51"/>
<wire x1="1.1256" y1="1.3505" x2="1.1473" y2="1.3515" width="0.01" layer="51"/>
<wire x1="1.1038" y1="1.3501" x2="1.1256" y2="1.3505" width="0.01" layer="51"/>
<wire x1="1.0929" y1="1.35" x2="1.1038" y2="1.3501" width="0.01" layer="51"/>
<wire x1="1.4464" y1="1.4232" x2="1.4464" y2="0.0768" width="0.01" layer="51"/>
<wire x1="-6" y1="-4.25" x2="6" y2="-4.25" width="0.2" layer="21"/>
<wire x1="-4.8128" y1="4.25" x2="-4.8128" y2="-4.25" width="0.01" layer="51"/>
<wire x1="1.0929" y1="4.25" x2="1.0929" y2="3.65" width="0.01" layer="51"/>
<wire x1="0.75" y1="3.65" x2="1.0929" y2="3.65" width="0.01" layer="51"/>
<wire x1="0.75" y1="3.65" x2="0.75" y2="1.35" width="0.01" layer="51" curve="180"/>
<wire x1="1.0929" y1="1.35" x2="0.75" y2="1.35" width="0.01" layer="51"/>
<wire x1="1.0929" y1="1.35" x2="1.0929" y2="0.15" width="0.01" layer="51"/>
<wire x1="0.75" y1="0.15" x2="0.75" y2="-2.15" width="0.01" layer="51" curve="180"/>
<wire x1="1.4464" y1="-2.0768" x2="1.4464" y2="-4.25" width="0.01" layer="51"/>
<wire x1="1.0929" y1="-2.15" x2="1.0929" y2="-4.25" width="0.01" layer="51"/>
<wire x1="1.6423" y1="-1.8" x2="1.5492" y2="-1.8" width="0.01" layer="51"/>
<wire x1="1.5492" y1="-0.2" x2="1.6423" y2="-0.2" width="0.01" layer="51"/>
<wire x1="1.4464" y1="0.0768" x2="1.7838" y2="-0.0919" width="0.01" layer="51"/>
<wire x1="1.7596" y1="-0.1103" x2="1.7838" y2="-0.0919" width="0.01" layer="51"/>
<wire x1="1.7119" y1="-0.1466" x2="1.7596" y2="-0.1103" width="0.01" layer="51"/>
<wire x1="1.6653" y1="-0.1823" x2="1.7119" y2="-0.1466" width="0.01" layer="51"/>
<wire x1="1.6423" y1="-0.2" x2="1.6653" y2="-0.1823" width="0.01" layer="51"/>
<wire x1="0.75" y1="-0.2" x2="1.5492" y2="-0.2" width="0.01" layer="51"/>
<wire x1="0.75" y1="0.15" x2="0.75" y2="-0.2" width="0.01" layer="51"/>
<wire x1="0.75" y1="0.15" x2="1.0929" y2="0.15" width="0.01" layer="51"/>
<wire x1="1.1038" y1="0.1499" x2="1.0929" y2="0.15" width="0.01" layer="51"/>
<wire x1="1.1256" y1="0.1495" x2="1.1038" y2="0.1499" width="0.01" layer="51"/>
<wire x1="1.1473" y1="0.1485" x2="1.1256" y2="0.1495" width="0.01" layer="51"/>
<wire x1="1.1582" y1="0.1479" x2="1.1473" y2="0.1485" width="0.01" layer="51"/>
<wire x1="1.169" y1="0.1471" x2="1.1582" y2="0.1479" width="0.01" layer="51"/>
<wire x1="1.1904" y1="0.1452" x2="1.169" y2="0.1471" width="0.01" layer="51"/>
<wire x1="1.2117" y1="0.1428" x2="1.1904" y2="0.1452" width="0.01" layer="51"/>
<wire x1="1.2328" y1="0.14" x2="1.2117" y2="0.1428" width="0.01" layer="51"/>
<wire x1="1.2536" y1="0.1367" x2="1.2328" y2="0.14" width="0.01" layer="51"/>
<wire x1="1.2741" y1="0.133" x2="1.2536" y2="0.1367" width="0.01" layer="51"/>
<wire x1="1.2842" y1="0.131" x2="1.2741" y2="0.133" width="0.01" layer="51"/>
<wire x1="1.2943" y1="0.1288" x2="1.2842" y2="0.131" width="0.01" layer="51"/>
<wire x1="1.314" y1="0.1242" x2="1.2943" y2="0.1288" width="0.01" layer="51"/>
<wire x1="1.3334" y1="0.1192" x2="1.314" y2="0.1242" width="0.01" layer="51"/>
<wire x1="1.3523" y1="0.1137" x2="1.3334" y2="0.1192" width="0.01" layer="51"/>
<wire x1="1.3707" y1="0.1079" x2="1.3523" y2="0.1137" width="0.01" layer="51"/>
<wire x1="1.3885" y1="0.1016" x2="1.3707" y2="0.1079" width="0.01" layer="51"/>
<wire x1="1.3973" y1="0.0983" x2="1.3885" y2="0.1016" width="0.01" layer="51"/>
<wire x1="1.4059" y1="0.095" x2="1.3973" y2="0.0983" width="0.01" layer="51"/>
<wire x1="1.4226" y1="0.088" x2="1.4059" y2="0.095" width="0.01" layer="51"/>
<wire x1="1.4386" y1="0.0806" x2="1.4226" y2="0.088" width="0.01" layer="51"/>
<wire x1="1.4464" y1="0.0768" x2="1.4386" y2="0.0806" width="0.01" layer="51"/>
<wire x1="1.7838" y1="-1.9081" x2="1.4464" y2="-2.0768" width="0.01" layer="51"/>
<wire x1="1.4386" y1="-2.0806" x2="1.4464" y2="-2.0768" width="0.01" layer="51"/>
<wire x1="1.4226" y1="-2.088" x2="1.4386" y2="-2.0806" width="0.01" layer="51"/>
<wire x1="1.4059" y1="-2.095" x2="1.4226" y2="-2.088" width="0.01" layer="51"/>
<wire x1="1.3973" y1="-2.0983" x2="1.4059" y2="-2.095" width="0.01" layer="51"/>
<wire x1="1.3885" y1="-2.1016" x2="1.3973" y2="-2.0983" width="0.01" layer="51"/>
<wire x1="1.3707" y1="-2.1079" x2="1.3885" y2="-2.1016" width="0.01" layer="51"/>
<wire x1="1.3523" y1="-2.1137" x2="1.3707" y2="-2.1079" width="0.01" layer="51"/>
<wire x1="1.3334" y1="-2.1192" x2="1.3523" y2="-2.1137" width="0.01" layer="51"/>
<wire x1="1.314" y1="-2.1242" x2="1.3334" y2="-2.1192" width="0.01" layer="51"/>
<wire x1="1.2943" y1="-2.1288" x2="1.314" y2="-2.1242" width="0.01" layer="51"/>
<wire x1="1.2842" y1="-2.131" x2="1.2943" y2="-2.1288" width="0.01" layer="51"/>
<wire x1="1.2741" y1="-2.133" x2="1.2842" y2="-2.131" width="0.01" layer="51"/>
<wire x1="1.2536" y1="-2.1367" x2="1.2741" y2="-2.133" width="0.01" layer="51"/>
<wire x1="1.2328" y1="-2.14" x2="1.2536" y2="-2.1367" width="0.01" layer="51"/>
<wire x1="1.2117" y1="-2.1428" x2="1.2328" y2="-2.14" width="0.01" layer="51"/>
<wire x1="1.1904" y1="-2.1452" x2="1.2117" y2="-2.1428" width="0.01" layer="51"/>
<wire x1="1.169" y1="-2.1471" x2="1.1904" y2="-2.1452" width="0.01" layer="51"/>
<wire x1="1.1582" y1="-2.1479" x2="1.169" y2="-2.1471" width="0.01" layer="51"/>
<wire x1="1.1473" y1="-2.1485" x2="1.1582" y2="-2.1479" width="0.01" layer="51"/>
<wire x1="1.1256" y1="-2.1495" x2="1.1473" y2="-2.1485" width="0.01" layer="51"/>
<wire x1="1.1038" y1="-2.1499" x2="1.1256" y2="-2.1495" width="0.01" layer="51"/>
<wire x1="1.0929" y1="-2.15" x2="1.1038" y2="-2.1499" width="0.01" layer="51"/>
<wire x1="1.0929" y1="-2.15" x2="0.75" y2="-2.15" width="0.01" layer="51"/>
<wire x1="0.75" y1="-0.2" x2="0.75" y2="-1.8" width="0.01" layer="51"/>
<wire x1="0.75" y1="-1.8" x2="0.75" y2="-2.15" width="0.01" layer="51"/>
<wire x1="0.75" y1="-1.8" x2="1.5492" y2="-1.8" width="0.01" layer="51"/>
<wire x1="1.6653" y1="-1.8177" x2="1.6423" y2="-1.8" width="0.01" layer="51"/>
<wire x1="1.7119" y1="-1.8534" x2="1.6653" y2="-1.8177" width="0.01" layer="51"/>
<wire x1="1.7596" y1="-1.8897" x2="1.7119" y2="-1.8534" width="0.01" layer="51"/>
<wire x1="1.7838" y1="-1.9081" x2="1.7596" y2="-1.8897" width="0.01" layer="51"/>
<wire x1="1.1" y1="2.875" x2="1.1" y2="2.125" width="0.01" layer="51"/>
<wire x1="1.5" y1="2.875" x2="1.1" y2="2.875" width="0.01" layer="51"/>
<wire x1="1.1" y1="2.125" x2="1.5" y2="2.125" width="0.01" layer="51"/>
<wire x1="1.5" y1="2.125" x2="1.5" y2="2.875" width="0.01" layer="51"/>
<wire x1="-3.9" y1="-0.625" x2="-3.9" y2="-1.375" width="0.01" layer="51"/>
<wire x1="-3.5" y1="-0.625" x2="-3.9" y2="-0.625" width="0.01" layer="51"/>
<wire x1="-3.5" y1="-1.375" x2="-3.9" y2="-1.375" width="0.01" layer="51"/>
<wire x1="-1.6" y1="1.7571" x2="-1.6" y2="3.45" width="0.01" layer="51"/>
<wire x1="-3.5" y1="0.75" x2="-3.5" y2="3.45" width="0.01" layer="51"/>
<wire x1="-3.8" y1="0.75" x2="-3.8" y2="3.45" width="0.01" layer="51"/>
<wire x1="-1.6" y1="-1.7429" x2="-1.6" y2="-0.05" width="0.01" layer="51"/>
<wire x1="-3.5" y1="-2.75" x2="-3.5" y2="-0.05" width="0.01" layer="51"/>
<wire x1="-3.8" y1="-2.75" x2="-3.8" y2="-0.05" width="0.01" layer="51"/>
<wire x1="-4" y1="0.75" x2="-4" y2="3.3086" width="0.01" layer="51"/>
<wire x1="-4" y1="3.3086" x2="-4" y2="3.45" width="0.01" layer="51"/>
<wire x1="-3.4" y1="0.75" x2="-3.4" y2="2.1429" width="0.01" layer="51"/>
<wire x1="-3.2929" y1="3.45" x2="-1.6" y2="1.7571" width="0.01" layer="51"/>
<wire x1="-1.5971" y1="1.7542" x2="-1.6" y2="1.7571" width="0.01" layer="51"/>
<wire x1="-1.5913" y1="1.7483" x2="-1.5971" y2="1.7542" width="0.01" layer="51"/>
<wire x1="-1.5826" y1="1.7393" x2="-1.5913" y2="1.7483" width="0.01" layer="51"/>
<wire x1="-1.5796" y1="1.7363" x2="-1.5826" y2="1.7393" width="0.01" layer="51"/>
<wire x1="-1.568" y1="1.7239" x2="-1.5796" y2="1.7363" width="0.01" layer="51"/>
<wire x1="-1.5478" y1="1.7017" x2="-1.568" y2="1.7239" width="0.01" layer="51"/>
<wire x1="-1.5134" y1="1.6616" x2="-1.5478" y2="1.7017" width="0.01" layer="51"/>
<wire x1="-1.4965" y1="1.6407" x2="-1.5134" y2="1.6616" width="0.01" layer="51"/>
<wire x1="-1.4797" y1="1.6194" x2="-1.4965" y2="1.6407" width="0.01" layer="51"/>
<wire x1="-1.4469" y1="1.5753" x2="-1.4797" y2="1.6194" width="0.01" layer="51"/>
<wire x1="-1.4153" y1="1.5298" x2="-1.4469" y2="1.5753" width="0.01" layer="51"/>
<wire x1="-1.3851" y1="1.4831" x2="-1.4153" y2="1.5298" width="0.01" layer="51"/>
<wire x1="-1.3565" y1="1.4357" x2="-1.3851" y2="1.4831" width="0.01" layer="51"/>
<wire x1="-1.3298" y1="1.3878" x2="-1.3565" y2="1.4357" width="0.01" layer="51"/>
<wire x1="-1.3172" y1="1.3638" x2="-1.3298" y2="1.3878" width="0.01" layer="51"/>
<wire x1="-1.3051" y1="1.3399" x2="-1.3172" y2="1.3638" width="0.01" layer="51"/>
<wire x1="-1.2827" y1="1.2922" x2="-1.3051" y2="1.3399" width="0.01" layer="51"/>
<wire x1="-1.2626" y1="1.2453" x2="-1.2827" y2="1.2922" width="0.01" layer="51"/>
<wire x1="-1.2452" y1="1.1993" x2="-1.2626" y2="1.2453" width="0.01" layer="51"/>
<wire x1="-1.2304" y1="1.1548" x2="-1.2452" y2="1.1993" width="0.01" layer="51"/>
<wire x1="-1.2185" y1="1.1119" x2="-1.2304" y2="1.1548" width="0.01" layer="51"/>
<wire x1="-1.2136" y1="1.0912" x2="-1.2185" y2="1.1119" width="0.01" layer="51"/>
<wire x1="-1.2095" y1="1.0711" x2="-1.2136" y2="1.0912" width="0.01" layer="51"/>
<wire x1="-1.2034" y1="1.0326" x2="-1.2095" y2="1.0711" width="0.01" layer="51"/>
<wire x1="-1.2013" y1="1.0114" x2="-1.2034" y2="1.0326" width="0.01" layer="51"/>
<wire x1="-1.2009" y1="1.0055" x2="-1.2013" y2="1.0114" width="0.01" layer="51"/>
<wire x1="-1.2005" y1="0.9997" x2="-1.2009" y2="1.0055" width="0.01" layer="51"/>
<wire x1="-1.2004" y1="0.9968" x2="-1.2005" y2="0.9997" width="0.01" layer="51"/>
<wire x1="-1.2003" y1="0.994" x2="-1.2004" y2="0.9968" width="0.01" layer="51"/>
<wire x1="-1.2001" y1="0.9883" x2="-1.2003" y2="0.994" width="0.01" layer="51"/>
<wire x1="-1.2" y1="0.9827" x2="-1.2001" y2="0.9883" width="0.01" layer="51"/>
<wire x1="-1.2" y1="0.98" x2="-1.2" y2="0.9827" width="0.01" layer="51"/>
<wire x1="-1.2" y1="0.75" x2="-1.4414" y2="0.75" width="0.01" layer="51"/>
<wire x1="-1.4414" y1="0.75" x2="-2.0071" y2="0.75" width="0.01" layer="51"/>
<wire x1="-2.0071" y1="0.75" x2="-4" y2="0.75" width="0.01" layer="51"/>
<wire x1="-4" y1="3.45" x2="-3.8586" y2="3.45" width="0.01" layer="51"/>
<wire x1="-3.8586" y1="3.45" x2="-1.2" y2="3.45" width="0.01" layer="51"/>
<wire x1="-3.8586" y1="3.45" x2="-1.2" y2="0.7914" width="0.01" layer="51"/>
<wire x1="-1.2" y1="3.45" x2="-1.2" y2="0.75" width="0.01" layer="51"/>
<wire x1="-2.0071" y1="0.75" x2="-3.4" y2="2.1429" width="0.01" layer="51"/>
<wire x1="-3.4" y1="2.1429" x2="-4" y2="3.3086" width="0.01" layer="51"/>
<wire x1="-4" y1="3.3086" x2="-1.4414" y2="0.75" width="0.01" layer="51"/>
<wire x1="-4" y1="-2.75" x2="-4" y2="-0.1914" width="0.01" layer="51"/>
<wire x1="-4" y1="-0.1914" x2="-4" y2="-0.05" width="0.01" layer="51"/>
<wire x1="-3.4" y1="-2.75" x2="-3.4" y2="-1.3571" width="0.01" layer="51"/>
<wire x1="-3.2929" y1="-0.05" x2="-1.6" y2="-1.7429" width="0.01" layer="51"/>
<wire x1="-1.5971" y1="-1.7458" x2="-1.6" y2="-1.7429" width="0.01" layer="51"/>
<wire x1="-1.5913" y1="-1.7517" x2="-1.5971" y2="-1.7458" width="0.01" layer="51"/>
<wire x1="-1.5826" y1="-1.7607" x2="-1.5913" y2="-1.7517" width="0.01" layer="51"/>
<wire x1="-1.5796" y1="-1.7637" x2="-1.5826" y2="-1.7607" width="0.01" layer="51"/>
<wire x1="-1.568" y1="-1.7761" x2="-1.5796" y2="-1.7637" width="0.01" layer="51"/>
<wire x1="-1.5478" y1="-1.7983" x2="-1.568" y2="-1.7761" width="0.01" layer="51"/>
<wire x1="-1.5134" y1="-1.8384" x2="-1.5478" y2="-1.7983" width="0.01" layer="51"/>
<wire x1="-1.4965" y1="-1.8593" x2="-1.5134" y2="-1.8384" width="0.01" layer="51"/>
<wire x1="-1.4797" y1="-1.8806" x2="-1.4965" y2="-1.8593" width="0.01" layer="51"/>
<wire x1="-1.4469" y1="-1.9247" x2="-1.4797" y2="-1.8806" width="0.01" layer="51"/>
<wire x1="-1.4153" y1="-1.9702" x2="-1.4469" y2="-1.9247" width="0.01" layer="51"/>
<wire x1="-1.3851" y1="-2.0169" x2="-1.4153" y2="-1.9702" width="0.01" layer="51"/>
<wire x1="-1.3565" y1="-2.0643" x2="-1.3851" y2="-2.0169" width="0.01" layer="51"/>
<wire x1="-1.3298" y1="-2.1122" x2="-1.3565" y2="-2.0643" width="0.01" layer="51"/>
<wire x1="-1.3172" y1="-2.1362" x2="-1.3298" y2="-2.1122" width="0.01" layer="51"/>
<wire x1="-1.3051" y1="-2.1601" x2="-1.3172" y2="-2.1362" width="0.01" layer="51"/>
<wire x1="-1.2827" y1="-2.2078" x2="-1.3051" y2="-2.1601" width="0.01" layer="51"/>
<wire x1="-1.2626" y1="-2.2547" x2="-1.2827" y2="-2.2078" width="0.01" layer="51"/>
<wire x1="-1.2452" y1="-2.3007" x2="-1.2626" y2="-2.2547" width="0.01" layer="51"/>
<wire x1="-1.2304" y1="-2.3452" x2="-1.2452" y2="-2.3007" width="0.01" layer="51"/>
<wire x1="-1.2185" y1="-2.3881" x2="-1.2304" y2="-2.3452" width="0.01" layer="51"/>
<wire x1="-1.2136" y1="-2.4088" x2="-1.2185" y2="-2.3881" width="0.01" layer="51"/>
<wire x1="-1.2095" y1="-2.4289" x2="-1.2136" y2="-2.4088" width="0.01" layer="51"/>
<wire x1="-1.2034" y1="-2.4674" x2="-1.2095" y2="-2.4289" width="0.01" layer="51"/>
<wire x1="-1.2013" y1="-2.4886" x2="-1.2034" y2="-2.4674" width="0.01" layer="51"/>
<wire x1="-1.2009" y1="-2.4945" x2="-1.2013" y2="-2.4886" width="0.01" layer="51"/>
<wire x1="-1.2005" y1="-2.5003" x2="-1.2009" y2="-2.4945" width="0.01" layer="51"/>
<wire x1="-1.2004" y1="-2.5032" x2="-1.2005" y2="-2.5003" width="0.01" layer="51"/>
<wire x1="-1.2003" y1="-2.506" x2="-1.2004" y2="-2.5032" width="0.01" layer="51"/>
<wire x1="-1.2001" y1="-2.5117" x2="-1.2003" y2="-2.506" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-2.5173" x2="-1.2001" y2="-2.5117" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-2.52" x2="-1.2" y2="-2.5173" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-2.75" x2="-1.4414" y2="-2.75" width="0.01" layer="51"/>
<wire x1="-1.4414" y1="-2.75" x2="-2.0071" y2="-2.75" width="0.01" layer="51"/>
<wire x1="-2.0071" y1="-2.75" x2="-4" y2="-2.75" width="0.01" layer="51"/>
<wire x1="-4" y1="-0.05" x2="-3.8586" y2="-0.05" width="0.01" layer="51"/>
<wire x1="-3.8586" y1="-0.05" x2="-1.2" y2="-0.05" width="0.01" layer="51"/>
<wire x1="-3.8586" y1="-0.05" x2="-1.2" y2="-2.7086" width="0.01" layer="51"/>
<wire x1="-1.2" y1="-0.05" x2="-1.2" y2="-2.75" width="0.01" layer="51"/>
<wire x1="-2.0071" y1="-2.75" x2="-3.4" y2="-1.3571" width="0.01" layer="51"/>
<wire x1="-3.4" y1="-1.3571" x2="-4" y2="-0.1914" width="0.01" layer="51"/>
<wire x1="-4" y1="-0.1914" x2="-1.4414" y2="-2.75" width="0.01" layer="51"/>
<wire x1="-0.5542" y1="2.5" x2="2.0542" y2="2.5" width="0.01" layer="51"/>
<wire x1="0.75" y1="1.1958" x2="0.75" y2="3.8042" width="0.01" layer="51"/>
<wire x1="-0.5542" y1="-1" x2="2.0542" y2="-1" width="0.01" layer="51"/>
<wire x1="0.75" y1="-2.3042" x2="0.75" y2="0.3042" width="0.01" layer="51"/>
<pad name="L1" x="1.3" y="2.55" drill="1" shape="long"/>
<pad name="L2" x="-3.7" y="-0.95" drill="1" shape="long"/>
<text x="-5.5" y="4.75" size="2" layer="25" font="vector" ratio="10">&gt;NAME</text>
<text x="-5.46" y="-7.11" size="2" layer="27" font="vector" ratio="10">&gt;VALUE</text>
<text x="8.58" y="2.31" size="2" layer="21" font="vector" ratio="10" rot="R90">1</text>
</package>
</packages>
<symbols>
<symbol name="S-4-POL">
<wire x1="-3.81" y1="-10.16" x2="3.81" y2="-10.16" width="0.2" layer="97"/>
<wire x1="3.81" y1="5.08" x2="3.81" y2="10.16" width="0.2" layer="97"/>
<wire x1="3.81" y1="10.16" x2="-3.81" y2="10.16" width="0.2" layer="97"/>
<wire x1="-3.81" y1="10.16" x2="-3.81" y2="5.08" width="0.2" layer="97"/>
<wire x1="-3.81" y1="5.08" x2="-3.81" y2="0" width="0.2" layer="97"/>
<wire x1="-3.81" y1="5.08" x2="3.81" y2="5.08" width="0.2" layer="97"/>
<wire x1="3.81" y1="-10.16" x2="3.81" y2="-5.08" width="0.2" layer="97"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="0" width="0.2" layer="97"/>
<wire x1="3.81" y1="0" x2="3.81" y2="5.08" width="0.2" layer="97"/>
<wire x1="3.81" y1="0" x2="-3.81" y2="0" width="0.2" layer="97"/>
<wire x1="-3.81" y1="0" x2="-3.81" y2="-5.08" width="0.2" layer="97"/>
<wire x1="-3.81" y1="-5.08" x2="-3.81" y2="-10.16" width="0.2" layer="97"/>
<wire x1="-3.81" y1="-5.08" x2="3.81" y2="-5.08" width="0.2" layer="97"/>
<text x="-3.61" y="12.14" size="2" layer="95" ratio="10">&gt;NAME</text>
<text x="-3.61" y="-13.16" size="2" layer="96" ratio="10">&gt;VALUE</text>
<pin name="P4" x="-2.54" y="-7.62" visible="pad" length="short" function="dot"/>
<pin name="P3" x="-2.54" y="-2.54" visible="pad" length="short" function="dot"/>
<pin name="P2" x="-2.54" y="2.54" visible="pad" length="short" function="dot"/>
<pin name="P1" x="-2.54" y="7.62" visible="pad" length="short" function="dot"/>
</symbol>
<symbol name="S-2-POL">
<wire x1="-3.81" y1="5.08" x2="3.81" y2="5.08" width="0.254" layer="97"/>
<wire x1="3.81" y1="5.08" x2="3.81" y2="0" width="0.254" layer="97"/>
<wire x1="3.81" y1="0" x2="3.81" y2="-5.08" width="0.254" layer="97"/>
<wire x1="3.81" y1="-5.08" x2="-3.81" y2="-5.08" width="0.254" layer="97"/>
<wire x1="-3.81" y1="-5.08" x2="-3.81" y2="0" width="0.254" layer="97"/>
<wire x1="-3.81" y1="0" x2="-3.81" y2="5.08" width="0.254" layer="97"/>
<wire x1="-3.81" y1="0" x2="3.81" y2="0" width="0.254" layer="97"/>
<text x="-3.71" y="7.54" size="2" layer="95" ratio="10">&gt;NAME</text>
<text x="-3.71" y="-9.92" size="2" layer="96" ratio="10">&gt;VALUE</text>
<pin name="P2" x="-2.54" y="-2.54" visible="pad" length="short" function="dot"/>
<pin name="P1" x="-2.54" y="2.54" visible="pad" length="short" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="250-404" prefix="X">
<description>&lt;b&gt;Serie 250,  1-Leiter-Klemmenleiste für Leiterplatten 1 Lötstift/Pol versetzt / Series 250,  1-conductor PCB terminal strip 1 solder pin/pole, staggered&lt;/b&gt;&lt;br&gt;&lt;br&gt;Polzahl / Pole No.: 4 &lt;br&gt;Rastermaß / Pitch: 2.5 - 2.5  mm&lt;br&gt;Bemessungsspannung / Rated Voltage: 160 V&lt;br&gt;Nennstrom / Nominal Current: 4 A&lt;br&gt;Leiterquerschnitt / Conductor Size: 0.14 - 0.5 mm2&lt;br&gt;Anschlusstechnik / Connection Technology: CAGE CLAMP&lt;sup&gt;®&lt;/sup&gt; S &lt;br&gt;Lötstiftlänge: / Solder Pin Length: 3.6 mm&lt;br&gt;Leitereinführung (zur Platine) / Conductor entry angle (to PCB): 45 °&lt;br&gt;Farbe / Color: grau / gray&lt;br&gt;&lt;br&gt; Stand: 01.01.2014. Die jeweils aktuellen Daten zu diesem Artikel finden Sie in unserem Produktkatalog, den Sie unter &lt;a href="http://www.wago.com"&gt;www.wago.com&lt;/a&gt; einsehen können. &lt;br&gt; As of: 01/01/2014. Please find the newest data for this article in our product catalogue, which can be viewed under &lt;a href="http://www.wago.com"&gt;www.wago.com&lt;/a&gt;.&lt;br&gt;</description>
<gates>
<gate name="G$1" symbol="S-4-POL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="P-250-404">
<connects>
<connect gate="G$1" pin="P1" pad="L1"/>
<connect gate="G$1" pin="P2" pad="L2"/>
<connect gate="G$1" pin="P3" pad="L3"/>
<connect gate="G$1" pin="P4" pad="L4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="250-202" prefix="X">
<description>&lt;b&gt;Serie 250,  1-Leiter-Klemmenleiste für Leiterplatten 1 Lötstift/Pol versetzt / Series 250,  1-conductor PCB terminal strip 1 solder pin/pole, staggered&lt;/b&gt;&lt;br&gt;&lt;br&gt;Polzahl / Pole No.: 2 &lt;br&gt;Rastermaß / Pitch: 3.5 - 3.5  mm&lt;br&gt;Bemessungsspannung / Rated Voltage: 320 V&lt;br&gt;Nennstrom / Nominal Current: 8 A&lt;br&gt;Leiterquerschnitt / Conductor Size: 0.2 - 1.5 mm2&lt;br&gt;Anschlusstechnik / Connection Technology: CAGE CLAMP&lt;sup&gt;®&lt;/sup&gt; S &lt;br&gt;Lötstiftlänge: / Solder Pin Length: 3.6 mm&lt;br&gt;Leitereinführung (zur Platine) / Conductor entry angle (to PCB): 45 °&lt;br&gt;Farbe / Color: grau / gray&lt;br&gt;&lt;br&gt; Stand: 01.01.2014. Die jeweils aktuellen Daten zu diesem Artikel finden Sie in unserem Produktkatalog, den Sie unter &lt;a href="http://www.wago.com"&gt;www.wago.com&lt;/a&gt; einsehen können. &lt;br&gt; As of: 01/01/2014. Please find the newest data for this article in our product catalogue, which can be viewed under &lt;a href="http://www.wago.com"&gt;www.wago.com&lt;/a&gt;.&lt;br&gt;</description>
<gates>
<gate name="G$1" symbol="S-2-POL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="P-250-202">
<connects>
<connect gate="G$1" pin="P1" pad="L1"/>
<connect gate="G$1" pin="P2" pad="L2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="v-reg-2">
<description>&lt;b&gt;Voltage Regulators&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="TO220L1">
<description>&lt;b&gt;VOLTAGE REGULATOR&lt;/b&gt;</description>
<wire x1="-5.207" y1="-1.27" x2="5.207" y2="-1.27" width="0.1778" layer="21"/>
<wire x1="5.207" y1="14.605" x2="-5.207" y2="14.605" width="0.1778" layer="21"/>
<wire x1="5.207" y1="-1.27" x2="5.207" y2="11.176" width="0.1778" layer="21"/>
<wire x1="5.207" y1="11.176" x2="4.318" y2="11.176" width="0.1778" layer="21"/>
<wire x1="4.318" y1="11.176" x2="4.318" y2="12.7" width="0.1778" layer="21"/>
<wire x1="4.318" y1="12.7" x2="5.207" y2="12.7" width="0.1778" layer="21"/>
<wire x1="5.207" y1="12.7" x2="5.207" y2="14.605" width="0.1778" layer="21"/>
<wire x1="-5.207" y1="-1.27" x2="-5.207" y2="11.176" width="0.1778" layer="21"/>
<wire x1="-5.207" y1="11.176" x2="-4.318" y2="11.176" width="0.1778" layer="21"/>
<wire x1="-4.318" y1="11.176" x2="-4.318" y2="12.7" width="0.1778" layer="21"/>
<wire x1="-4.318" y1="12.7" x2="-5.207" y2="12.7" width="0.1778" layer="21"/>
<wire x1="-5.207" y1="12.7" x2="-5.207" y2="14.605" width="0.1778" layer="21"/>
<wire x1="-4.572" y1="-0.635" x2="4.572" y2="-0.635" width="0.1778" layer="21"/>
<wire x1="4.572" y1="7.62" x2="4.572" y2="-0.635" width="0.1778" layer="21"/>
<wire x1="4.572" y1="7.62" x2="-4.572" y2="7.62" width="0.1778" layer="21"/>
<wire x1="-4.572" y1="-0.635" x2="-4.572" y2="7.62" width="0.1778" layer="21"/>
<circle x="0" y="11.176" radius="1.8034" width="0.1778" layer="21"/>
<circle x="0" y="11.176" radius="4.191" width="0" layer="42"/>
<circle x="0" y="11.176" radius="4.191" width="0" layer="43"/>
<pad name="1" x="-2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-3.81" y="5.08" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.937" y="2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.048" y="0" size="1.27" layer="51" ratio="10">1</text>
<text x="-0.508" y="0" size="1.27" layer="51" ratio="10">2</text>
<text x="2.032" y="0" size="1.27" layer="51" ratio="10">3</text>
<rectangle x1="1.905" y1="-2.159" x2="3.175" y2="-1.27" layer="21"/>
<rectangle x1="1.905" y1="-3.81" x2="3.175" y2="-2.159" layer="51"/>
<rectangle x1="-0.635" y1="-2.159" x2="0.635" y2="-1.27" layer="21"/>
<rectangle x1="-3.175" y1="-2.159" x2="-1.905" y2="-1.27" layer="21"/>
<rectangle x1="-0.635" y1="-3.81" x2="0.635" y2="-2.159" layer="51"/>
<rectangle x1="-3.175" y1="-3.81" x2="-1.905" y2="-2.159" layer="51"/>
<hole x="0" y="11.176" drill="3.302"/>
</package>
<package name="TO220S">
<description>&lt;b&gt;VOLTAGE REGULATOR&lt;/b&gt;</description>
<wire x1="4.826" y1="-4.318" x2="5.08" y2="-4.064" width="0.1778" layer="21"/>
<wire x1="4.826" y1="-4.318" x2="-4.826" y2="-4.318" width="0.1778" layer="21"/>
<wire x1="-5.08" y1="-4.064" x2="-4.826" y2="-4.318" width="0.1778" layer="21"/>
<wire x1="5.08" y1="-1.143" x2="5.08" y2="-4.064" width="0.1778" layer="21"/>
<wire x1="-5.08" y1="-4.064" x2="-5.08" y2="-1.143" width="0.1778" layer="21"/>
<circle x="-4.6228" y="-3.7084" radius="0.254" width="0" layer="21"/>
<pad name="1" x="-2.54" y="-2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="-2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="-2.54" drill="1.016" shape="long" rot="R90"/>
<text x="-5.08" y="-5.9182" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-7.62" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.175" y="-3.81" size="1.27" layer="51" ratio="10">1</text>
<text x="-0.635" y="-3.81" size="1.27" layer="51" ratio="10">2</text>
<text x="1.905" y="-3.81" size="1.27" layer="51" ratio="10">3</text>
<rectangle x1="-5.334" y1="-1.27" x2="-3.429" y2="0" layer="21"/>
<rectangle x1="-3.429" y1="-0.762" x2="-1.651" y2="0" layer="21"/>
<rectangle x1="-1.651" y1="-1.27" x2="-0.889" y2="0" layer="21"/>
<rectangle x1="-0.889" y1="-0.762" x2="0.889" y2="0" layer="21"/>
<rectangle x1="0.889" y1="-1.27" x2="1.651" y2="0" layer="21"/>
<rectangle x1="1.651" y1="-0.762" x2="3.429" y2="0" layer="21"/>
<rectangle x1="3.429" y1="-1.27" x2="5.334" y2="0" layer="21"/>
<rectangle x1="-3.429" y1="-1.27" x2="-1.651" y2="-0.762" layer="51"/>
<rectangle x1="-0.889" y1="-1.27" x2="0.889" y2="-0.762" layer="51"/>
<rectangle x1="1.651" y1="-1.27" x2="3.429" y2="-0.762" layer="51"/>
</package>
<package name="TO263">
<description>&lt;b&gt;TO-263 Package&lt;/b&gt;</description>
<wire x1="-5.5" y1="-4.365" x2="-5.5" y2="4.635" width="0.254" layer="21"/>
<wire x1="5.5" y1="-4.365" x2="5.5" y2="4.635" width="0.254" layer="21"/>
<wire x1="5.5" y1="-4.365" x2="-5.5" y2="-4.365" width="0.254" layer="21"/>
<wire x1="-5.5" y1="4.635" x2="5.5" y2="4.635" width="0.254" layer="51"/>
<wire x1="-5.5" y1="4.635" x2="-4.4" y2="5.735" width="0.254" layer="51"/>
<wire x1="-4.4" y1="5.735" x2="4.4" y2="5.735" width="0.254" layer="51"/>
<wire x1="4.4" y1="5.735" x2="5.5" y2="4.635" width="0.254" layer="51"/>
<wire x1="-5.5" y1="3.935" x2="5.5" y2="3.935" width="0.127" layer="51"/>
<wire x1="-5.5" y1="-3.965" x2="5.5" y2="-3.965" width="0.127" layer="51"/>
<circle x="-3" y="-2.965" radius="0.4123" width="0" layer="51"/>
<smd name="4" x="0" y="2.635" dx="10.8" dy="9" layer="1" rot="R180"/>
<smd name="1" x="-2.54" y="-8.255" dx="3.81" dy="1.524" layer="1" rot="R90"/>
<smd name="2" x="0" y="-8.255" dx="3.81" dy="1.524" layer="1" rot="R90"/>
<smd name="3" x="2.54" y="-8.255" dx="3.81" dy="1.524" layer="1" rot="R90"/>
<text x="-6.0325" y="-4.445" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="7.3025" y="-4.445" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<text x="-3.2" y="-2.165" size="1.016" layer="51" ratio="10">1</text>
<text x="2.3" y="-2.165" size="1.016" layer="51" ratio="10">3</text>
<text x="-0.4" y="-2.165" size="1.016" layer="51" ratio="10">2</text>
<text x="-0.55" y="2.385" size="1.016" layer="51" ratio="10">4</text>
<rectangle x1="-3.04" y1="-5.865" x2="-2" y2="-4.37" layer="21"/>
<rectangle x1="-0.5" y1="-5.865" x2="0.5" y2="-4.37" layer="21"/>
<rectangle x1="2.04" y1="-5.865" x2="3" y2="-4.37" layer="21"/>
<rectangle x1="-3.04" y1="-8.64" x2="-2" y2="-5.865" layer="51"/>
<rectangle x1="-0.5" y1="-8.64" x2="0.5" y2="-5.865" layer="51"/>
<rectangle x1="2.04" y1="-8.64" x2="3" y2="-5.865" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="78XX">
<wire x1="-5.08" y1="-5.08" x2="5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="5.08" y2="2.54" width="0.4064" layer="94"/>
<wire x1="5.08" y1="2.54" x2="-5.08" y2="2.54" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<text x="2.54" y="-7.62" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.032" y="-4.318" size="1.524" layer="95">GND</text>
<text x="-4.445" y="-0.635" size="1.524" layer="95">IN</text>
<text x="0.635" y="-0.635" size="1.524" layer="95">OUT</text>
<pin name="IN" x="-7.62" y="0" visible="off" length="short" direction="in"/>
<pin name="GND" x="0" y="-7.62" visible="off" length="short" direction="in" rot="R90"/>
<pin name="OUT" x="7.62" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LM1086">
<gates>
<gate name="G$1" symbol="78XX" x="0" y="1.27"/>
</gates>
<devices>
<device name="TO220H" package="TO220L1">
<connects>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="IN" pad="3"/>
<connect gate="G$1" pin="OUT" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TO220V" package="TO220S">
<connects>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="IN" pad="3"/>
<connect gate="G$1" pin="OUT" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TO263" package="TO263">
<connects>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="IN" pad="3"/>
<connect gate="G$1" pin="OUT" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="andereBauteile">
<description>&lt;b&gt;andere Bauteile&lt;/b&gt;&lt;br&gt;
&lt;i&gt;www.kreatives-chaos.com&lt;/i&gt;&lt;br&gt;&lt;br&gt;
Falls sie fragen zu dieser Bibiliothek haben, &lt;br&gt;
schreiben sie eine Email an die Adresse :&lt;br&gt;
&lt;author&gt;email@kreatives-chaos.com&lt;/author&gt;
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;03.06.2004&lt;/b&gt;&lt;i&gt; ( Fabian Greif )&lt;/i&gt;&lt;br&gt;
LM386 hinzugefügt&lt;br&gt;&lt;br&gt;</description>
<packages>
<package name="SO08">
<wire x1="2.159" y1="1.9558" x2="-2.159" y2="1.9558" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.9558" x2="2.54" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.54" y1="1.5748" x2="-2.159" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="1.9558" x2="2.54" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-1.5748" x2="-2.159" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.159" y1="-1.9558" x2="2.159" y2="-1.9558" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.5748" x2="2.54" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.5748" x2="-2.54" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.508" x2="-2.54" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.54" y1="-1.6002" x2="2.54" y2="-1.6002" width="0.0508" layer="21"/>
<smd name="1" x="-1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="-1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="-0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="3.937" y="-2.032" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<text x="-2.921" y="-1.905" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="1.651" y1="1.9558" x2="2.159" y2="3.0988" layer="51"/>
<rectangle x1="-2.159" y1="-3.0988" x2="-1.651" y2="-1.9558" layer="51"/>
<rectangle x1="-0.889" y1="-3.0988" x2="-0.381" y2="-1.9558" layer="51"/>
<rectangle x1="0.381" y1="-3.0734" x2="0.889" y2="-1.9304" layer="51"/>
<rectangle x1="1.651" y1="-3.0988" x2="2.159" y2="-1.9558" layer="51"/>
<rectangle x1="0.381" y1="1.9558" x2="0.889" y2="3.0988" layer="51"/>
<rectangle x1="-0.889" y1="1.9558" x2="-0.381" y2="3.0988" layer="51"/>
<rectangle x1="-2.159" y1="1.9558" x2="-1.651" y2="3.0988" layer="51"/>
</package>
<package name="DIL08">
<wire x1="-5.207" y1="-0.635" x2="-5.207" y2="0.635" width="0.1524" layer="21" curve="180"/>
<wire x1="-5.207" y1="-0.635" x2="-5.207" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-2.794" x2="5.207" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.794" x2="5.207" y2="2.794" width="0.1524" layer="21"/>
<wire x1="5.207" y1="2.794" x2="-5.207" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.794" x2="-5.207" y2="0.635" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-5.4864" y="-2.667" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-4.191" y="-0.7366" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MAX485">
<wire x1="-7.62" y1="7.62" x2="7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="0" width="0.254" layer="94"/>
<wire x1="7.62" y1="0" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-2.54" x2="-7.62" y2="0" width="0.254" layer="94"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="5.715" width="0.127" layer="94"/>
<wire x1="1.27" y1="5.715" x2="1.27" y2="3.175" width="0.127" layer="94"/>
<wire x1="1.27" y1="3.175" x2="-1.905" y2="5.08" width="0.127" layer="94"/>
<wire x1="-1.905" y1="5.08" x2="1.27" y2="6.985" width="0.127" layer="94"/>
<wire x1="-1.905" y1="-4.445" x2="-1.905" y2="-2.54" width="0.127" layer="94"/>
<wire x1="1.27" y1="-2.8575" x2="-1.905" y2="-4.445" width="0.127" layer="94"/>
<wire x1="-1.397" y1="2.54" x2="-0.635" y2="2.54" width="0.127" layer="94"/>
<wire x1="-0.635" y1="2.54" x2="-0.635" y2="3.1115" width="0.127" layer="94"/>
<wire x1="-2.54" y1="0" x2="-0.635" y2="0" width="0.127" layer="94"/>
<wire x1="1.27" y1="-2.8575" x2="4.7625" y2="-2.8575" width="0.127" layer="94"/>
<wire x1="4.7625" y1="-2.8575" x2="4.7625" y2="0" width="0.127" layer="94"/>
<wire x1="4.7625" y1="0" x2="4.7625" y2="5.715" width="0.127" layer="94"/>
<wire x1="1.27" y1="5.715" x2="4.7625" y2="5.715" width="0.127" layer="94"/>
<wire x1="1.016" y1="-1.5875" x2="3.4925" y2="-1.5875" width="0.127" layer="94"/>
<wire x1="3.4925" y1="-1.5875" x2="3.4925" y2="2.54" width="0.127" layer="94"/>
<wire x1="3.4925" y1="2.54" x2="3.4925" y2="4.445" width="0.127" layer="94"/>
<wire x1="3.4925" y1="4.445" x2="2.54" y2="4.445" width="0.127" layer="94"/>
<wire x1="7.62" y1="2.54" x2="3.4925" y2="2.54" width="0.127" layer="94"/>
<wire x1="7.62" y1="0" x2="4.7625" y2="0" width="0.127" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-5.842" y2="5.08" width="0.127" layer="94"/>
<wire x1="-2.413" y1="5.08" x2="-1.905" y2="5.08" width="0.127" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="-5.842" y2="2.54" width="0.127" layer="94"/>
<wire x1="-7.62" y1="-2.54" x2="-5.969" y2="-2.54" width="0.127" layer="94"/>
<wire x1="-2.794" y1="-2.54" x2="-1.905" y2="-2.54" width="0.127" layer="94"/>
<wire x1="-7.62" y1="0" x2="-5.969" y2="0" width="0.127" layer="94"/>
<wire x1="-1.905" y1="-2.54" x2="-1.905" y2="-0.635" width="0.127" layer="94"/>
<wire x1="-1.905" y1="-0.635" x2="1.27" y2="-2.8575" width="0.127" layer="94"/>
<wire x1="-0.635" y1="-1.5875" x2="-0.635" y2="0" width="0.127" layer="94"/>
<circle x="3.4925" y="2.54" radius="0.254" width="0.4064" layer="94"/>
<circle x="4.7625" y="0" radius="0.254" width="0.4064" layer="94"/>
<circle x="-0.635" y="3.4925" radius="0.449" width="0.254" layer="94"/>
<circle x="1.905" y="4.445" radius="0.449" width="0.254" layer="94"/>
<circle x="0.635" y="-1.5875" radius="0.449" width="0.254" layer="94"/>
<text x="5.715" y="-2.54" size="1.778" layer="95">A</text>
<text x="5.715" y="3.4925" size="1.778" layer="95">B</text>
<text x="-7.62" y="8.89" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="-7.62" y="-7.62" size="1.778" layer="96" font="vector">&gt;VALUE</text>
<pin name="RO" x="-10.16" y="5.08" length="short" direction="out"/>
<pin name="RE/" x="-10.16" y="2.54" length="short" direction="in"/>
<pin name="DE" x="-10.16" y="0" length="short" direction="in"/>
<pin name="DI" x="-10.16" y="-2.54" length="short" direction="in"/>
<pin name="A" x="10.16" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="B" x="10.16" y="2.54" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="VCC-GND">
<text x="1.524" y="-5.08" size="1.016" layer="95" rot="R90">GND</text>
<text x="1.524" y="2.54" size="1.016" layer="95" rot="R90">VCC</text>
<text x="-0.762" y="-0.762" size="1.778" layer="95" font="vector">&gt;NAME</text>
<pin name="VCC" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
<pin name="GND" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MAX485" prefix="IC">
<description>&lt;b&gt;MAX485&lt;/b&gt;&lt;br&gt;
RS485 Half Duplex Driver</description>
<gates>
<gate name="G$1" symbol="MAX485" x="0" y="-2.54"/>
<gate name="G" symbol="VCC-GND" x="17.78" y="-2.54"/>
</gates>
<devices>
<device name="CSA" package="SO08">
<connects>
<connect gate="G" pin="GND" pad="5"/>
<connect gate="G" pin="VCC" pad="8"/>
<connect gate="G$1" pin="A" pad="6"/>
<connect gate="G$1" pin="B" pad="7"/>
<connect gate="G$1" pin="DE" pad="3"/>
<connect gate="G$1" pin="DI" pad="4"/>
<connect gate="G$1" pin="RE/" pad="2"/>
<connect gate="G$1" pin="RO" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CPA" package="DIL08">
<connects>
<connect gate="G" pin="GND" pad="5"/>
<connect gate="G" pin="VCC" pad="8"/>
<connect gate="G$1" pin="A" pad="6"/>
<connect gate="G$1" pin="B" pad="7"/>
<connect gate="G$1" pin="DE" pad="3"/>
<connect gate="G$1" pin="DI" pad="4"/>
<connect gate="G$1" pin="RE/" pad="2"/>
<connect gate="G$1" pin="RO" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="X2" library="con-appsys" deviceset="RJ45" device=""/>
<part name="X3" library="con-appsys" deviceset="RJ45" device=""/>
<part name="X4" library="con-appsys" deviceset="RJ45" device=""/>
<part name="X5" library="con-appsys" deviceset="RJ45" device=""/>
<part name="X6" library="con-appsys" deviceset="RJ45" device=""/>
<part name="X7" library="con-appsys" deviceset="RJ45" device=""/>
<part name="X8" library="con-appsys" deviceset="RJ45" device=""/>
<part name="X9" library="con-appsys" deviceset="RJ45" device=""/>
<part name="JP1" library="pinhead-1" deviceset="PINHD-2X20" device="_2.54"/>
<part name="STEPPER" library="con-wago_250" deviceset="250-404" device=""/>
<part name="12V" library="con-wago_250" deviceset="250-202" device=""/>
<part name="U$1" library="v-reg-2" deviceset="LM1086" device="TO220V"/>
<part name="IC1" library="andereBauteile" deviceset="MAX485" device="CSA"/>
<part name="12V1" library="con-wago_250" deviceset="250-202" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="157.48" y="-73.66" size="1.778" layer="91">SDA</text>
<text x="198.12" y="5.08" size="1.778" layer="91">SDA</text>
<text x="228.6" y="-76.2" size="1.778" layer="91">SCL</text>
<text x="312.42" y="12.7" size="1.778" layer="91">SCL</text>
</plain>
<instances>
<instance part="X2" gate="-" x="86.36" y="25.4" rot="R90"/>
<instance part="X2" gate="SHIELD@1" x="95.25" y="25.146" rot="R90"/>
<instance part="X2" gate="SHIELD@2" x="95.25" y="28.702" rot="R90"/>
<instance part="X2" gate="SHIELD@3" x="95.25" y="32.004" rot="R90"/>
<instance part="X2" gate="SHIELD@4" x="95.25" y="35.56" rot="R90"/>
<instance part="X3" gate="-" x="119.38" y="25.4" rot="R90"/>
<instance part="X3" gate="SHIELD@1" x="128.27" y="25.146" rot="R90"/>
<instance part="X3" gate="SHIELD@2" x="128.27" y="28.702" rot="R90"/>
<instance part="X3" gate="SHIELD@3" x="128.27" y="32.004" rot="R90"/>
<instance part="X3" gate="SHIELD@4" x="128.27" y="35.56" rot="R90"/>
<instance part="X4" gate="-" x="152.4" y="25.4" rot="R90"/>
<instance part="X4" gate="SHIELD@1" x="161.29" y="25.146" rot="R90"/>
<instance part="X4" gate="SHIELD@2" x="161.29" y="28.702" rot="R90"/>
<instance part="X4" gate="SHIELD@3" x="161.29" y="32.004" rot="R90"/>
<instance part="X4" gate="SHIELD@4" x="161.29" y="35.56" rot="R90"/>
<instance part="X5" gate="-" x="185.42" y="25.4" rot="R90"/>
<instance part="X5" gate="SHIELD@1" x="194.31" y="25.146" rot="R90"/>
<instance part="X5" gate="SHIELD@2" x="194.31" y="28.702" rot="R90"/>
<instance part="X5" gate="SHIELD@3" x="194.31" y="32.004" rot="R90"/>
<instance part="X5" gate="SHIELD@4" x="194.31" y="35.56" rot="R90"/>
<instance part="X6" gate="-" x="218.44" y="25.4" rot="R90"/>
<instance part="X6" gate="SHIELD@1" x="227.33" y="25.146" rot="R90"/>
<instance part="X6" gate="SHIELD@2" x="227.33" y="28.702" rot="R90"/>
<instance part="X6" gate="SHIELD@3" x="227.33" y="32.004" rot="R90"/>
<instance part="X6" gate="SHIELD@4" x="227.33" y="35.56" rot="R90"/>
<instance part="X7" gate="-" x="251.46" y="25.4" rot="R90"/>
<instance part="X7" gate="SHIELD@1" x="260.35" y="25.146" rot="R90"/>
<instance part="X7" gate="SHIELD@2" x="260.35" y="28.702" rot="R90"/>
<instance part="X7" gate="SHIELD@3" x="260.35" y="32.004" rot="R90"/>
<instance part="X7" gate="SHIELD@4" x="260.35" y="35.56" rot="R90"/>
<instance part="X8" gate="-" x="284.48" y="25.4" rot="R90"/>
<instance part="X8" gate="SHIELD@1" x="293.37" y="25.146" rot="R90"/>
<instance part="X8" gate="SHIELD@2" x="293.37" y="28.702" rot="R90"/>
<instance part="X8" gate="SHIELD@3" x="293.37" y="32.004" rot="R90"/>
<instance part="X8" gate="SHIELD@4" x="293.37" y="35.56" rot="R90"/>
<instance part="X9" gate="-" x="317.5" y="25.4" rot="R90"/>
<instance part="X9" gate="SHIELD@1" x="326.39" y="25.146" rot="R90"/>
<instance part="X9" gate="SHIELD@2" x="326.39" y="28.702" rot="R90"/>
<instance part="X9" gate="SHIELD@3" x="326.39" y="32.004" rot="R90"/>
<instance part="X9" gate="SHIELD@4" x="326.39" y="35.56" rot="R90"/>
<instance part="JP1" gate="A" x="193.04" y="-63.5" rot="R90"/>
<instance part="STEPPER" gate="G$1" x="314.96" y="-35.56"/>
<instance part="12V" gate="G$1" x="314.96" y="-68.58"/>
<instance part="U$1" gate="G$1" x="269.24" y="-27.94" rot="R90"/>
<instance part="IC1" gate="G$1" x="149.86" y="-119.38"/>
<instance part="IC1" gate="G" x="215.9" y="-137.16"/>
<instance part="12V1" gate="G$1" x="185.42" y="-137.16"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="X2" gate="-" pin="1"/>
<wire x1="76.2" y1="22.86" x2="76.2" y2="43.18" width="0.1524" layer="91"/>
<wire x1="76.2" y1="43.18" x2="81.28" y2="43.18" width="0.1524" layer="91"/>
<wire x1="81.28" y1="43.18" x2="86.36" y2="43.18" width="0.1524" layer="91"/>
<wire x1="86.36" y1="43.18" x2="91.44" y2="43.18" width="0.1524" layer="91"/>
<wire x1="91.44" y1="43.18" x2="96.52" y2="43.18" width="0.1524" layer="91"/>
<wire x1="96.52" y1="43.18" x2="109.22" y2="43.18" width="0.1524" layer="91"/>
<wire x1="109.22" y1="43.18" x2="114.3" y2="43.18" width="0.1524" layer="91"/>
<wire x1="114.3" y1="43.18" x2="119.38" y2="43.18" width="0.1524" layer="91"/>
<wire x1="119.38" y1="43.18" x2="124.46" y2="43.18" width="0.1524" layer="91"/>
<wire x1="124.46" y1="43.18" x2="129.54" y2="43.18" width="0.1524" layer="91"/>
<wire x1="129.54" y1="43.18" x2="142.24" y2="43.18" width="0.1524" layer="91"/>
<wire x1="142.24" y1="43.18" x2="147.32" y2="43.18" width="0.1524" layer="91"/>
<wire x1="147.32" y1="43.18" x2="152.4" y2="43.18" width="0.1524" layer="91"/>
<wire x1="152.4" y1="43.18" x2="157.48" y2="43.18" width="0.1524" layer="91"/>
<wire x1="157.48" y1="43.18" x2="162.56" y2="43.18" width="0.1524" layer="91"/>
<wire x1="162.56" y1="43.18" x2="167.64" y2="43.18" width="0.1524" layer="91"/>
<wire x1="167.64" y1="43.18" x2="175.26" y2="43.18" width="0.1524" layer="91"/>
<wire x1="175.26" y1="43.18" x2="180.34" y2="43.18" width="0.1524" layer="91"/>
<wire x1="180.34" y1="43.18" x2="185.42" y2="43.18" width="0.1524" layer="91"/>
<wire x1="185.42" y1="43.18" x2="190.5" y2="43.18" width="0.1524" layer="91"/>
<wire x1="190.5" y1="43.18" x2="195.58" y2="43.18" width="0.1524" layer="91"/>
<wire x1="195.58" y1="43.18" x2="208.28" y2="43.18" width="0.1524" layer="91"/>
<wire x1="208.28" y1="43.18" x2="213.36" y2="43.18" width="0.1524" layer="91"/>
<wire x1="213.36" y1="43.18" x2="218.44" y2="43.18" width="0.1524" layer="91"/>
<wire x1="218.44" y1="43.18" x2="223.52" y2="43.18" width="0.1524" layer="91"/>
<wire x1="223.52" y1="43.18" x2="228.6" y2="43.18" width="0.1524" layer="91"/>
<wire x1="228.6" y1="43.18" x2="241.3" y2="43.18" width="0.1524" layer="91"/>
<wire x1="241.3" y1="43.18" x2="246.38" y2="43.18" width="0.1524" layer="91"/>
<wire x1="246.38" y1="43.18" x2="251.46" y2="43.18" width="0.1524" layer="91"/>
<wire x1="251.46" y1="43.18" x2="256.54" y2="43.18" width="0.1524" layer="91"/>
<wire x1="256.54" y1="43.18" x2="261.62" y2="43.18" width="0.1524" layer="91"/>
<wire x1="261.62" y1="43.18" x2="274.32" y2="43.18" width="0.1524" layer="91"/>
<wire x1="274.32" y1="43.18" x2="279.4" y2="43.18" width="0.1524" layer="91"/>
<wire x1="279.4" y1="43.18" x2="284.48" y2="43.18" width="0.1524" layer="91"/>
<wire x1="284.48" y1="43.18" x2="289.56" y2="43.18" width="0.1524" layer="91"/>
<wire x1="289.56" y1="43.18" x2="294.64" y2="43.18" width="0.1524" layer="91"/>
<wire x1="294.64" y1="43.18" x2="307.34" y2="43.18" width="0.1524" layer="91"/>
<wire x1="307.34" y1="43.18" x2="312.42" y2="43.18" width="0.1524" layer="91"/>
<wire x1="312.42" y1="43.18" x2="317.5" y2="43.18" width="0.1524" layer="91"/>
<wire x1="317.5" y1="43.18" x2="322.58" y2="43.18" width="0.1524" layer="91"/>
<wire x1="322.58" y1="43.18" x2="327.66" y2="43.18" width="0.1524" layer="91"/>
<pinref part="X2" gate="-" pin="3"/>
<wire x1="81.28" y1="22.86" x2="81.28" y2="43.18" width="0.1524" layer="91"/>
<junction x="81.28" y="43.18"/>
<pinref part="X2" gate="-" pin="5"/>
<wire x1="86.36" y1="22.86" x2="86.36" y2="43.18" width="0.1524" layer="91"/>
<junction x="86.36" y="43.18"/>
<pinref part="X2" gate="-" pin="7"/>
<wire x1="91.44" y1="22.86" x2="91.44" y2="43.18" width="0.1524" layer="91"/>
<junction x="91.44" y="43.18"/>
<pinref part="X3" gate="-" pin="1"/>
<wire x1="109.22" y1="22.86" x2="109.22" y2="43.18" width="0.1524" layer="91"/>
<junction x="109.22" y="43.18"/>
<pinref part="X3" gate="-" pin="3"/>
<wire x1="114.3" y1="22.86" x2="114.3" y2="43.18" width="0.1524" layer="91"/>
<junction x="114.3" y="43.18"/>
<pinref part="X3" gate="-" pin="5"/>
<wire x1="119.38" y1="22.86" x2="119.38" y2="43.18" width="0.1524" layer="91"/>
<junction x="119.38" y="43.18"/>
<pinref part="X3" gate="-" pin="7"/>
<wire x1="124.46" y1="22.86" x2="124.46" y2="43.18" width="0.1524" layer="91"/>
<junction x="124.46" y="43.18"/>
<pinref part="X4" gate="-" pin="1"/>
<wire x1="142.24" y1="22.86" x2="142.24" y2="43.18" width="0.1524" layer="91"/>
<junction x="142.24" y="43.18"/>
<pinref part="X4" gate="-" pin="3"/>
<wire x1="147.32" y1="22.86" x2="147.32" y2="43.18" width="0.1524" layer="91"/>
<junction x="147.32" y="43.18"/>
<pinref part="X4" gate="-" pin="5"/>
<wire x1="152.4" y1="22.86" x2="152.4" y2="43.18" width="0.1524" layer="91"/>
<junction x="152.4" y="43.18"/>
<pinref part="X4" gate="-" pin="7"/>
<wire x1="157.48" y1="22.86" x2="157.48" y2="43.18" width="0.1524" layer="91"/>
<junction x="157.48" y="43.18"/>
<pinref part="X5" gate="-" pin="1"/>
<wire x1="175.26" y1="22.86" x2="175.26" y2="43.18" width="0.1524" layer="91"/>
<junction x="175.26" y="43.18"/>
<pinref part="X5" gate="-" pin="3"/>
<wire x1="180.34" y1="22.86" x2="180.34" y2="43.18" width="0.1524" layer="91"/>
<junction x="180.34" y="43.18"/>
<pinref part="X5" gate="-" pin="5"/>
<wire x1="185.42" y1="22.86" x2="185.42" y2="43.18" width="0.1524" layer="91"/>
<junction x="185.42" y="43.18"/>
<pinref part="X5" gate="-" pin="7"/>
<wire x1="190.5" y1="22.86" x2="190.5" y2="43.18" width="0.1524" layer="91"/>
<junction x="190.5" y="43.18"/>
<pinref part="X6" gate="-" pin="1"/>
<wire x1="208.28" y1="22.86" x2="208.28" y2="43.18" width="0.1524" layer="91"/>
<junction x="208.28" y="43.18"/>
<wire x1="213.36" y1="25.4" x2="213.36" y2="43.18" width="0.1524" layer="91"/>
<junction x="213.36" y="43.18"/>
<pinref part="X6" gate="-" pin="5"/>
<wire x1="218.44" y1="22.86" x2="218.44" y2="43.18" width="0.1524" layer="91"/>
<junction x="218.44" y="43.18"/>
<pinref part="X6" gate="-" pin="7"/>
<wire x1="223.52" y1="22.86" x2="223.52" y2="43.18" width="0.1524" layer="91"/>
<junction x="223.52" y="43.18"/>
<wire x1="241.3" y1="25.4" x2="241.3" y2="43.18" width="0.1524" layer="91"/>
<junction x="241.3" y="43.18"/>
<wire x1="246.38" y1="25.4" x2="246.38" y2="43.18" width="0.1524" layer="91"/>
<junction x="246.38" y="43.18"/>
<wire x1="251.46" y1="25.4" x2="251.46" y2="43.18" width="0.1524" layer="91"/>
<junction x="251.46" y="43.18"/>
<wire x1="256.54" y1="25.4" x2="256.54" y2="43.18" width="0.1524" layer="91"/>
<junction x="256.54" y="43.18"/>
<wire x1="274.32" y1="25.4" x2="274.32" y2="43.18" width="0.1524" layer="91"/>
<junction x="274.32" y="43.18"/>
<wire x1="279.4" y1="25.4" x2="279.4" y2="43.18" width="0.1524" layer="91"/>
<junction x="279.4" y="43.18"/>
<wire x1="284.48" y1="25.4" x2="284.48" y2="43.18" width="0.1524" layer="91"/>
<junction x="284.48" y="43.18"/>
<wire x1="289.56" y1="25.4" x2="289.56" y2="43.18" width="0.1524" layer="91"/>
<junction x="289.56" y="43.18"/>
<wire x1="307.34" y1="25.4" x2="307.34" y2="43.18" width="0.1524" layer="91"/>
<junction x="307.34" y="43.18"/>
<wire x1="312.42" y1="25.4" x2="312.42" y2="43.18" width="0.1524" layer="91"/>
<junction x="312.42" y="43.18"/>
<wire x1="317.5" y1="25.4" x2="317.5" y2="43.18" width="0.1524" layer="91"/>
<junction x="317.5" y="43.18"/>
<wire x1="322.58" y1="25.4" x2="322.58" y2="43.18" width="0.1524" layer="91"/>
<junction x="322.58" y="43.18"/>
<wire x1="96.52" y1="25.4" x2="96.52" y2="43.18" width="0.1524" layer="91"/>
<junction x="96.52" y="43.18"/>
<wire x1="129.54" y1="25.4" x2="129.54" y2="43.18" width="0.1524" layer="91"/>
<junction x="129.54" y="43.18"/>
<wire x1="162.56" y1="25.4" x2="162.56" y2="43.18" width="0.1524" layer="91"/>
<junction x="162.56" y="43.18"/>
<wire x1="195.58" y1="25.4" x2="195.58" y2="43.18" width="0.1524" layer="91"/>
<junction x="195.58" y="43.18"/>
<wire x1="228.6" y1="25.4" x2="228.6" y2="43.18" width="0.1524" layer="91"/>
<junction x="228.6" y="43.18"/>
<wire x1="261.62" y1="25.4" x2="261.62" y2="43.18" width="0.1524" layer="91"/>
<junction x="261.62" y="43.18"/>
<wire x1="294.64" y1="25.4" x2="294.64" y2="43.18" width="0.1524" layer="91"/>
<junction x="294.64" y="43.18"/>
<wire x1="327.66" y1="25.4" x2="327.66" y2="43.18" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="6"/>
<wire x1="175.26" y1="-58.42" x2="175.26" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-43.18" x2="167.64" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-43.18" x2="167.64" y2="43.18" width="0.1524" layer="91"/>
<junction x="167.64" y="43.18"/>
<pinref part="12V" gate="G$1" pin="P2"/>
<wire x1="312.42" y1="-71.12" x2="350.52" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="350.52" y1="-71.12" x2="350.52" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="350.52" y1="-43.18" x2="350.52" y2="45.72" width="0.1524" layer="91"/>
<wire x1="350.52" y1="45.72" x2="327.66" y2="45.72" width="0.1524" layer="91"/>
<wire x1="327.66" y1="45.72" x2="327.66" y2="43.18" width="0.1524" layer="91"/>
<junction x="327.66" y="43.18"/>
<pinref part="STEPPER" gate="G$1" pin="P4"/>
<wire x1="312.42" y1="-43.18" x2="350.52" y2="-43.18" width="0.1524" layer="91"/>
<junction x="350.52" y="-43.18"/>
<wire x1="312.42" y1="-71.12" x2="327.66" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="327.66" y1="-71.12" x2="327.66" y2="-55.88" width="0.1524" layer="91"/>
<junction x="312.42" y="-71.12"/>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="327.66" y1="-55.88" x2="289.56" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="289.56" y1="-55.88" x2="276.86" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="276.86" y1="-55.88" x2="276.86" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="243.84" y1="-121.92" x2="289.56" y2="-121.92" width="0.1524" layer="91"/>
<wire x1="289.56" y1="-121.92" x2="289.56" y2="-55.88" width="0.1524" layer="91"/>
<junction x="289.56" y="-55.88"/>
<wire x1="243.84" y1="-121.92" x2="243.84" y2="-149.86" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G" pin="GND"/>
<wire x1="243.84" y1="-149.86" x2="215.9" y2="-149.86" width="0.1524" layer="91"/>
<wire x1="215.9" y1="-149.86" x2="215.9" y2="-144.78" width="0.1524" layer="91"/>
<pinref part="X6" gate="-" pin="3"/>
<wire x1="213.36" y1="43.18" x2="213.36" y2="22.86" width="0.1524" layer="91"/>
<pinref part="X8" gate="-" pin="7"/>
<wire x1="289.56" y1="22.86" x2="289.56" y2="43.18" width="0.1524" layer="91"/>
<pinref part="X8" gate="-" pin="3"/>
<wire x1="279.4" y1="22.86" x2="279.4" y2="43.18" width="0.1524" layer="91"/>
<pinref part="X8" gate="-" pin="1"/>
<wire x1="274.32" y1="22.86" x2="274.32" y2="43.18" width="0.1524" layer="91"/>
<pinref part="X9" gate="-" pin="7"/>
<wire x1="322.58" y1="22.86" x2="322.58" y2="43.18" width="0.1524" layer="91"/>
<pinref part="X7" gate="-" pin="1"/>
<wire x1="241.3" y1="22.86" x2="241.3" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="JP1" gate="A" pin="3"/>
<wire x1="172.72" y1="-66.04" x2="172.72" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="172.72" y1="-76.2" x2="149.86" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="149.86" y1="-76.2" x2="149.86" y2="5.08" width="0.1524" layer="91"/>
<wire x1="149.86" y1="5.08" x2="121.92" y2="5.08" width="0.1524" layer="91"/>
<wire x1="121.92" y1="5.08" x2="88.9" y2="5.08" width="0.1524" layer="91"/>
<wire x1="149.86" y1="5.08" x2="154.94" y2="5.08" width="0.1524" layer="91"/>
<junction x="149.86" y="5.08"/>
<pinref part="X2" gate="-" pin="6"/>
<wire x1="154.94" y1="5.08" x2="187.96" y2="5.08" width="0.1524" layer="91"/>
<wire x1="187.96" y1="5.08" x2="220.98" y2="5.08" width="0.1524" layer="91"/>
<wire x1="220.98" y1="5.08" x2="254" y2="5.08" width="0.1524" layer="91"/>
<wire x1="254" y1="5.08" x2="287.02" y2="5.08" width="0.1524" layer="91"/>
<wire x1="287.02" y1="5.08" x2="320.04" y2="5.08" width="0.1524" layer="91"/>
<wire x1="88.9" y1="22.86" x2="88.9" y2="5.08" width="0.1524" layer="91"/>
<pinref part="X3" gate="-" pin="6"/>
<wire x1="121.92" y1="22.86" x2="121.92" y2="5.08" width="0.1524" layer="91"/>
<junction x="121.92" y="5.08"/>
<pinref part="X4" gate="-" pin="6"/>
<wire x1="154.94" y1="22.86" x2="154.94" y2="5.08" width="0.1524" layer="91"/>
<junction x="154.94" y="5.08"/>
<pinref part="X5" gate="-" pin="6"/>
<wire x1="187.96" y1="22.86" x2="187.96" y2="5.08" width="0.1524" layer="91"/>
<junction x="187.96" y="5.08"/>
<pinref part="X6" gate="-" pin="6"/>
<wire x1="220.98" y1="22.86" x2="220.98" y2="5.08" width="0.1524" layer="91"/>
<junction x="220.98" y="5.08"/>
<pinref part="X7" gate="-" pin="6"/>
<wire x1="254" y1="22.86" x2="254" y2="5.08" width="0.1524" layer="91"/>
<junction x="254" y="5.08"/>
<pinref part="X8" gate="-" pin="6"/>
<wire x1="287.02" y1="22.86" x2="287.02" y2="5.08" width="0.1524" layer="91"/>
<junction x="287.02" y="5.08"/>
<pinref part="X9" gate="-" pin="6"/>
<wire x1="320.04" y1="22.86" x2="320.04" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="JP1" gate="A" pin="5"/>
<wire x1="175.26" y1="-66.04" x2="175.26" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-76.2" x2="233.68" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-76.2" x2="233.68" y2="12.7" width="0.1524" layer="91"/>
<wire x1="233.68" y1="12.7" x2="248.92" y2="12.7" width="0.1524" layer="91"/>
<wire x1="248.92" y1="12.7" x2="281.94" y2="12.7" width="0.1524" layer="91"/>
<wire x1="281.94" y1="12.7" x2="314.96" y2="12.7" width="0.1524" layer="91"/>
<wire x1="233.68" y1="12.7" x2="215.9" y2="12.7" width="0.1524" layer="91"/>
<pinref part="X9" gate="-" pin="4"/>
<wire x1="215.9" y1="12.7" x2="182.88" y2="12.7" width="0.1524" layer="91"/>
<wire x1="182.88" y1="12.7" x2="149.86" y2="12.7" width="0.1524" layer="91"/>
<wire x1="149.86" y1="12.7" x2="116.84" y2="12.7" width="0.1524" layer="91"/>
<wire x1="116.84" y1="12.7" x2="83.82" y2="12.7" width="0.1524" layer="91"/>
<wire x1="314.96" y1="22.86" x2="314.96" y2="12.7" width="0.1524" layer="91"/>
<pinref part="X8" gate="-" pin="4"/>
<wire x1="281.94" y1="22.86" x2="281.94" y2="12.7" width="0.1524" layer="91"/>
<junction x="281.94" y="12.7"/>
<pinref part="X7" gate="-" pin="4"/>
<wire x1="248.92" y1="22.86" x2="248.92" y2="12.7" width="0.1524" layer="91"/>
<junction x="248.92" y="12.7"/>
<pinref part="X6" gate="-" pin="4"/>
<wire x1="215.9" y1="22.86" x2="215.9" y2="12.7" width="0.1524" layer="91"/>
<junction x="215.9" y="12.7"/>
<pinref part="X5" gate="-" pin="4"/>
<wire x1="182.88" y1="22.86" x2="182.88" y2="12.7" width="0.1524" layer="91"/>
<junction x="182.88" y="12.7"/>
<pinref part="X4" gate="-" pin="4"/>
<wire x1="149.86" y1="22.86" x2="149.86" y2="12.7" width="0.1524" layer="91"/>
<junction x="149.86" y="12.7"/>
<pinref part="X3" gate="-" pin="4"/>
<wire x1="116.84" y1="22.86" x2="116.84" y2="12.7" width="0.1524" layer="91"/>
<junction x="116.84" y="12.7"/>
<pinref part="X2" gate="-" pin="4"/>
<wire x1="83.82" y1="22.86" x2="83.82" y2="12.7" width="0.1524" layer="91"/>
<wire x1="215.9" y1="25.4" x2="215.9" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="12V" gate="G$1" pin="P1"/>
<wire x1="312.42" y1="-66.04" x2="340.36" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="340.36" y1="-66.04" x2="340.36" y2="20.32" width="0.1524" layer="91"/>
<wire x1="340.36" y1="20.32" x2="325.12" y2="20.32" width="0.1524" layer="91"/>
<pinref part="X9" gate="-" pin="8"/>
<wire x1="325.12" y1="20.32" x2="325.12" y2="22.86" width="0.1524" layer="91"/>
<wire x1="325.12" y1="20.32" x2="292.1" y2="20.32" width="0.1524" layer="91"/>
<junction x="325.12" y="20.32"/>
<pinref part="X8" gate="-" pin="8"/>
<wire x1="292.1" y1="22.86" x2="292.1" y2="20.32" width="0.1524" layer="91"/>
<pinref part="X2" gate="-" pin="8"/>
<wire x1="292.1" y1="20.32" x2="259.08" y2="20.32" width="0.1524" layer="91"/>
<wire x1="259.08" y1="20.32" x2="226.06" y2="20.32" width="0.1524" layer="91"/>
<wire x1="226.06" y1="20.32" x2="193.04" y2="20.32" width="0.1524" layer="91"/>
<wire x1="193.04" y1="20.32" x2="160.02" y2="20.32" width="0.1524" layer="91"/>
<wire x1="160.02" y1="20.32" x2="127" y2="20.32" width="0.1524" layer="91"/>
<wire x1="127" y1="20.32" x2="93.98" y2="20.32" width="0.1524" layer="91"/>
<wire x1="93.98" y1="20.32" x2="93.98" y2="22.86" width="0.1524" layer="91"/>
<junction x="292.1" y="20.32"/>
<pinref part="X3" gate="-" pin="8"/>
<wire x1="127" y1="22.86" x2="127" y2="20.32" width="0.1524" layer="91"/>
<junction x="127" y="20.32"/>
<pinref part="X4" gate="-" pin="8"/>
<wire x1="160.02" y1="22.86" x2="160.02" y2="20.32" width="0.1524" layer="91"/>
<junction x="160.02" y="20.32"/>
<pinref part="X5" gate="-" pin="8"/>
<wire x1="193.04" y1="22.86" x2="193.04" y2="20.32" width="0.1524" layer="91"/>
<junction x="193.04" y="20.32"/>
<pinref part="X6" gate="-" pin="8"/>
<wire x1="226.06" y1="22.86" x2="226.06" y2="20.32" width="0.1524" layer="91"/>
<junction x="226.06" y="20.32"/>
<pinref part="X7" gate="-" pin="8"/>
<wire x1="259.08" y1="22.86" x2="259.08" y2="20.32" width="0.1524" layer="91"/>
<junction x="259.08" y="20.32"/>
<pinref part="U$1" gate="G$1" pin="IN"/>
<wire x1="312.42" y1="-66.04" x2="269.24" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="269.24" y1="-66.04" x2="269.24" y2="-35.56" width="0.1524" layer="91"/>
<junction x="312.42" y="-66.04"/>
<wire x1="226.06" y1="25.4" x2="226.06" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="JP1" gate="A" pin="11"/>
<wire x1="182.88" y1="-66.04" x2="182.88" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="182.88" y1="-71.12" x2="302.26" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="302.26" y1="-71.12" x2="302.26" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="STEPPER" gate="G$1" pin="P1"/>
<wire x1="302.26" y1="-27.94" x2="312.42" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="JP1" gate="A" pin="13"/>
<wire x1="185.42" y1="-66.04" x2="185.42" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-73.66" x2="304.8" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="304.8" y1="-73.66" x2="304.8" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="STEPPER" gate="G$1" pin="P2"/>
<wire x1="304.8" y1="-33.02" x2="312.42" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="JP1" gate="A" pin="15"/>
<wire x1="187.96" y1="-66.04" x2="187.96" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="187.96" y1="-78.74" x2="307.34" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="307.34" y1="-78.74" x2="307.34" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="STEPPER" gate="G$1" pin="P3"/>
<wire x1="307.34" y1="-38.1" x2="312.42" y2="-38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="OUT"/>
<wire x1="269.24" y1="-20.32" x2="332.74" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="332.74" y1="-20.32" x2="332.74" y2="17.78" width="0.1524" layer="91"/>
<pinref part="X2" gate="-" pin="2"/>
<wire x1="332.74" y1="17.78" x2="309.88" y2="17.78" width="0.1524" layer="91"/>
<wire x1="309.88" y1="17.78" x2="276.86" y2="17.78" width="0.1524" layer="91"/>
<wire x1="276.86" y1="17.78" x2="243.84" y2="17.78" width="0.1524" layer="91"/>
<wire x1="243.84" y1="17.78" x2="210.82" y2="17.78" width="0.1524" layer="91"/>
<wire x1="210.82" y1="17.78" x2="177.8" y2="17.78" width="0.1524" layer="91"/>
<wire x1="177.8" y1="17.78" x2="144.78" y2="17.78" width="0.1524" layer="91"/>
<wire x1="144.78" y1="17.78" x2="111.76" y2="17.78" width="0.1524" layer="91"/>
<wire x1="111.76" y1="17.78" x2="78.74" y2="17.78" width="0.1524" layer="91"/>
<wire x1="78.74" y1="17.78" x2="78.74" y2="22.86" width="0.1524" layer="91"/>
<pinref part="X3" gate="-" pin="2"/>
<wire x1="111.76" y1="22.86" x2="111.76" y2="17.78" width="0.1524" layer="91"/>
<junction x="111.76" y="17.78"/>
<pinref part="X4" gate="-" pin="2"/>
<wire x1="144.78" y1="22.86" x2="144.78" y2="17.78" width="0.1524" layer="91"/>
<junction x="144.78" y="17.78"/>
<pinref part="X5" gate="-" pin="2"/>
<wire x1="177.8" y1="22.86" x2="177.8" y2="17.78" width="0.1524" layer="91"/>
<junction x="177.8" y="17.78"/>
<pinref part="X6" gate="-" pin="2"/>
<wire x1="210.82" y1="22.86" x2="210.82" y2="17.78" width="0.1524" layer="91"/>
<junction x="210.82" y="17.78"/>
<pinref part="X7" gate="-" pin="2"/>
<wire x1="243.84" y1="22.86" x2="243.84" y2="17.78" width="0.1524" layer="91"/>
<junction x="243.84" y="17.78"/>
<pinref part="X8" gate="-" pin="2"/>
<wire x1="276.86" y1="22.86" x2="276.86" y2="17.78" width="0.1524" layer="91"/>
<junction x="276.86" y="17.78"/>
<pinref part="X9" gate="-" pin="2"/>
<wire x1="309.88" y1="22.86" x2="309.88" y2="17.78" width="0.1524" layer="91"/>
<junction x="309.88" y="17.78"/>
<wire x1="269.24" y1="-20.32" x2="246.38" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-20.32" x2="246.38" y2="-104.14" width="0.1524" layer="91"/>
<junction x="269.24" y="-20.32"/>
<wire x1="246.38" y1="-104.14" x2="208.28" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="208.28" y1="-104.14" x2="208.28" y2="-114.3" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G" pin="VCC"/>
<wire x1="208.28" y1="-114.3" x2="215.9" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="215.9" y1="-114.3" x2="215.9" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="210.82" y1="25.4" x2="210.82" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<wire x1="251.5" y1="23" x2="251.5" y2="43" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="A"/>
<wire x1="160.02" y1="-119.38" x2="165.1" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="165.1" y1="-119.38" x2="165.1" y2="-139.7" width="0.1524" layer="91"/>
<pinref part="12V1" gate="G$1" pin="P2"/>
<wire x1="165.1" y1="-139.7" x2="182.88" y2="-139.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="B"/>
<wire x1="160.02" y1="-116.84" x2="177.8" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="177.8" y1="-116.84" x2="177.8" y2="-134.62" width="0.1524" layer="91"/>
<pinref part="12V1" gate="G$1" pin="P1"/>
<wire x1="177.8" y1="-134.62" x2="182.88" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="JP1" gate="A" pin="12"/>
<wire x1="182.88" y1="-58.42" x2="182.88" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="182.88" y1="-45.72" x2="152.4" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="152.4" y1="-45.72" x2="152.4" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="152.4" y1="-101.6" x2="127" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="127" y1="-101.6" x2="127" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="DE"/>
<wire x1="127" y1="-119.38" x2="139.7" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="RE/"/>
<wire x1="139.7" y1="-116.84" x2="139.7" y2="-119.38" width="0.1524" layer="91"/>
<junction x="139.7" y="-119.38"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="JP1" gate="A" pin="10"/>
<wire x1="180.34" y1="-58.42" x2="180.34" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="RO"/>
<wire x1="180.34" y1="-48.26" x2="139.7" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="139.7" y1="-48.26" x2="139.7" y2="-114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="JP1" gate="A" pin="8"/>
<wire x1="177.8" y1="-58.42" x2="177.8" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="177.8" y1="-50.8" x2="134.62" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="134.62" y1="-50.8" x2="134.62" y2="-121.92" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="DI"/>
<wire x1="134.62" y1="-121.92" x2="139.7" y2="-121.92" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
