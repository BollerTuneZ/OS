<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
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
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="e-elektro-zeichnungsrahmen">
<description>&lt;b&gt;Rahmen für Elektropläne&lt;/b&gt;&lt;p&gt;
Die vordefinierten Rahmen eignen sich für &lt;u&gt;Kontakt- und Signalreferenzen&lt;/u&gt;, die ab Version 5.0 möglich sind.&lt;p&gt;

Wird ein Rahmen mit vordefinerten &lt;u&gt;Attributen&lt;/u&gt;, z. B. RAHMEN_A4_8Z-19S, in eine neue Schaltung
geholt, dann sind zunächst die Platzhaltertexte (&gt;ATTRIBUTNAME) sichtbar, weil diese Attribute noch nicht
angelegt sind. Verwenden Sie das User-Language-Programm &lt;u&gt;e-attributverwaltung.ulp&lt;/u&gt;, um auf
bequeme Weise die noch nicht definierten Attribute zu generieren.&lt;p&gt;
&lt;author&gt;Autor librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="RAHMEN_A4_8Z-19S_SPS">
<wire x1="25.4" y1="10.922" x2="25.4" y2="0" width="0.1524" layer="94"/>
<wire x1="38.1" y1="10.922" x2="38.1" y2="0" width="0.1524" layer="94"/>
<wire x1="54.61" y1="11.049" x2="54.61" y2="0" width="0.1524" layer="94"/>
<wire x1="261.62" y1="0" x2="261.62" y2="5.715" width="0.1524" layer="94"/>
<wire x1="261.62" y1="5.715" x2="284.353" y2="5.715" width="0.1524" layer="94"/>
<wire x1="64.77" y1="11.049" x2="64.77" y2="8.382" width="0.1524" layer="94"/>
<wire x1="64.77" y1="8.382" x2="64.77" y2="3.175" width="0.1524" layer="94"/>
<wire x1="64.77" y1="3.175" x2="64.77" y2="0" width="0.1524" layer="94"/>
<wire x1="227.33" y1="11.049" x2="227.33" y2="5.715" width="0.1524" layer="94"/>
<wire x1="227.33" y1="5.715" x2="261.62" y2="5.715" width="0.1524" layer="94"/>
<wire x1="201.93" y1="0" x2="201.93" y2="5.715" width="0.1524" layer="94"/>
<wire x1="201.93" y1="5.715" x2="227.33" y2="5.715" width="0.1524" layer="94"/>
<wire x1="179.07" y1="0" x2="179.07" y2="5.715" width="0.1524" layer="94"/>
<wire x1="179.07" y1="5.715" x2="179.07" y2="11.049" width="0.1524" layer="94"/>
<wire x1="201.93" y1="5.715" x2="179.07" y2="5.715" width="0.1524" layer="94"/>
<wire x1="173.99" y1="0" x2="173.99" y2="3.175" width="0.1524" layer="94"/>
<wire x1="173.99" y1="3.175" x2="173.99" y2="11.049" width="0.1524" layer="94"/>
<wire x1="146.05" y1="0" x2="146.05" y2="3.175" width="0.1524" layer="94"/>
<wire x1="146.05" y1="3.175" x2="173.99" y2="3.175" width="0.1524" layer="94"/>
<wire x1="120.65" y1="3.175" x2="146.05" y2="3.175" width="0.1524" layer="94"/>
<wire x1="120.65" y1="0" x2="120.65" y2="3.175" width="0.0508" layer="94"/>
<wire x1="90.17" y1="0" x2="90.17" y2="3.175" width="0.1524" layer="94"/>
<wire x1="120.65" y1="3.175" x2="90.17" y2="3.175" width="0.1524" layer="94"/>
<wire x1="90.17" y1="3.175" x2="90.17" y2="11.049" width="0.1524" layer="94"/>
<wire x1="146.05" y1="3.175" x2="146.05" y2="11.049" width="0.1524" layer="94"/>
<wire x1="64.77" y1="8.382" x2="90.17" y2="8.382" width="0.1524" layer="94"/>
<wire x1="64.77" y1="5.842" x2="90.17" y2="5.842" width="0.1524" layer="94"/>
<wire x1="64.77" y1="3.175" x2="90.17" y2="3.175" width="0.1524" layer="94"/>
<wire x1="0" y1="-5.08" x2="2.54" y2="-5.08" width="0.254" layer="95" style="shortdash"/>
<wire x1="3.81" y1="25.4" x2="283.21" y2="25.4" width="0" layer="98" style="longdash"/>
<wire x1="0" y1="14.351" x2="0" y2="0" width="0.3048" layer="94"/>
<wire x1="0" y1="0" x2="284.48" y2="0" width="0.3048" layer="94"/>
<wire x1="5.08" y1="60.96" x2="281.94" y2="60.96" width="0" layer="98" style="dashdot"/>
<wire x1="284.48" y1="10.922" x2="284.48" y2="0" width="0.3048" layer="94"/>
<text x="262.89" y="0.635" size="1.778" layer="95">&gt;SHEET</text>
<text x="5.08" y="25.4" size="1.778" layer="94">&gt;CONTACT_XREF</text>
<text x="228.092" y="6.35" size="1.524" layer="95">&gt;DRAWING_NAME</text>
<text x="0.635" y="0.635" size="1.6764" layer="95">Änderung</text>
<text x="26.035" y="0.635" size="1.6764" layer="95">Datum</text>
<text x="38.735" y="0.635" size="1.6764" layer="95">Name</text>
<text x="55.245" y="0.635" size="1.6764" layer="95">Norm</text>
<text x="90.932" y="0.635" size="1.6764" layer="95">Urspr.:</text>
<text x="121.285" y="0.762" size="1.6764" layer="95">Ers. f.</text>
<text x="147.32" y="0.635" size="1.6764" layer="95">Ers. d.</text>
<text x="179.705" y="3.175" size="1.778" layer="95">Ersteller</text>
<text x="179.705" y="8.763" size="1.778" layer="95">Auftrags-Nr.:</text>
<text x="226.568" y="10.541" size="1.778" layer="95" rot="R180">Werks-Nr.</text>
<text x="203.2" y="3.175" size="1.778" layer="95">Zeichnungs-Nr.</text>
<text x="262.89" y="3.175" size="1.778" layer="95">Blatt</text>
<text x="55.245" y="3.81" size="1.6764" layer="95">Gepr.</text>
<text x="55.245" y="6.35" size="1.6764" layer="95">Bearb.</text>
<text x="55.245" y="8.89" size="1.6764" layer="95">Datum</text>
<text x="90.932" y="8.89" size="1.6764" layer="95">Kunde:</text>
<text x="90.932" y="5.969" size="1.6764" layer="95">Kunden-</text>
<text x="90.932" y="3.81" size="1.6764" layer="95">Zeichnung:</text>
<text x="0.635" y="3.81" size="1.524" layer="95">&gt;AENDERUNG1</text>
<text x="0.635" y="6.35" size="1.524" layer="95">&gt;AENDERUNG2</text>
<text x="0.635" y="8.89" size="1.524" layer="95">&gt;AENDERUNG3</text>
<text x="179.705" y="6.35" size="1.524" layer="95">&gt;AUFTRAGS_NR</text>
<text x="65.405" y="6.35" size="1.524" layer="95">&gt;BEARBEITET</text>
<text x="65.405" y="8.89" size="1.524" layer="95">&gt;DATUM</text>
<text x="26.035" y="3.81" size="1.524" layer="95">&gt;DATUM1</text>
<text x="26.035" y="6.35" size="1.524" layer="95">&gt;DATUM2</text>
<text x="26.035" y="8.89" size="1.524" layer="95">&gt;DATUM3</text>
<text x="128.778" y="0.762" size="1.524" layer="95">&gt;ERSATZ_FUER</text>
<text x="155.194" y="0.762" size="1.524" layer="95">&gt;ERSETZT_DURCH</text>
<text x="179.705" y="0.635" size="1.524" layer="95">&gt;ERSTELLER</text>
<text x="65.405" y="3.81" size="1.524" layer="95">&gt;GEPRUEFT</text>
<text x="38.735" y="3.81" size="1.524" layer="95">&gt;NAME1</text>
<text x="38.735" y="6.35" size="1.524" layer="95">&gt;NAME2</text>
<text x="38.735" y="8.89" size="1.524" layer="95">&gt;NAME3</text>
<text x="65.405" y="0.635" size="1.524" layer="95">&gt;NORM</text>
<text x="98.806" y="0.635" size="1.524" layer="95">&gt;URSPRUNG</text>
<text x="226.568" y="7.874" size="1.524" layer="95" rot="R180">&gt;WERKS_NR</text>
<text x="203.2" y="0.635" size="1.524" layer="95">&gt;ZEICHNUNGS_NR</text>
<text x="103.632" y="3.81" size="1.524" layer="95">&gt;KD_ZEICHNUNG</text>
<text x="102.616" y="8.89" size="1.524" layer="95">&gt;KUNDE</text>
<text x="228.092" y="8.763" size="1.524" layer="95">Dateiname:</text>
<text x="1.27" y="-3.81" size="1.524" layer="95">Papierrand</text>
<text x="128.27" y="-5.08" size="1.524" layer="95">Heftrand</text>
<text x="5.08" y="60.96" size="1.778" layer="98">Klemmen</text>
<text x="6.35" y="12.7" size="1.778" layer="98" rot="R90">Bereich für</text>
<text x="13.97" y="12.7" size="1.778" layer="98" rot="R90">und</text>
<text x="16.51" y="12.7" size="1.778" layer="98" rot="R90">Peripherie</text>
<text x="11.43" y="12.7" size="1.778" layer="98" rot="R90">spiegel</text>
<text x="8.89" y="12.7" size="1.778" layer="98" rot="R90">Kontakt-</text>
<frame x1="0" y1="11.049" x2="284.48" y2="200.66" columns="19" rows="8" layer="94" border-right="no" border-bottom="no"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RAHMEN_A4_8Z-19S_SPS" prefix="RAHMEN">
<description>Zeichnungsrahmen DIN A4 für SPS mit Attributen.&lt;p&gt;
 8 Zeilen, 19 Spalten und Hilfslinien&lt;br&gt;
 Verwenden Sie das User-Language-Programm &lt;u&gt;e-attribute-anlegen.ulp&lt;/u&gt;, um auf
bequeme Weise die noch nicht definierten Attribute zu generieren.</description>
<gates>
<gate name="G$1" symbol="RAHMEN_A4_8Z-19S_SPS" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="AENDERUNG1" value="" constant="no"/>
<attribute name="AENDERUNG2" value="" constant="no"/>
<attribute name="AENDERUNG3" value="" constant="no"/>
<attribute name="DATUM1" value="" constant="no"/>
<attribute name="DATUM2" value="" constant="no"/>
<attribute name="DATUM3" value="" constant="no"/>
<attribute name="NAME1" value="" constant="no"/>
<attribute name="NAME2" value="" constant="no"/>
<attribute name="NAME3" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="e-symbole">
<description>&lt;b&gt;Devices und Symbole zur Definition eigener Schaltzeichen&lt;/b&gt;&lt;p&gt;

Neben den Devices, die direkt in einer Schaltung platziert werden können, enthält die
vorliegende Bibliothek eine Reihe von Symbolen, die von keinem Device verwendet werden.
Sie bieten dem Benutzer die Möglichkeit, sich eigene Schaltzeichen (Devices) zusammenzustellen.
Die Definition von Schützen wird besonders einfach, wenn Sie das User-Language-Programm
&lt;u&gt;e-bauteil-erstellen.ulp&lt;/u&gt; verwenden. Damit können Sie Schützspulen, Haupt- und Nebenkontakte
beliebig kombinieren und deren Kontaktnamen frei wählen. Zusätzlich können Zeichensymbole ohne
Kontakte, etwa für automatische Rückstellung, in das Device aufgenommen werden.&lt;p&gt;

Laden Sie dazu die vorliegende Bibliothek, und tippen Sie in die Kommandozeile:&lt;p&gt;

&lt;author&gt;run e-bauteil-erstellen.ulp&lt;/author&gt;&lt;p&gt;

ein.&lt;p&gt;

Wenn Sie Devices ohne das oben genannte ULP auf Basis dieser Bibliothek definieren
oder eigene Symbole anlegen wollen, sind folgende Punkte von Bedeutung:&lt;p&gt;

Endet ein Symbolname mit _KS, wird ein Kontaktspiegel erzeugt (statt &gt;VALUE
steht dann &gt;XREF im Symbol).&lt;p&gt;

Im Spulensymbol steht &gt;VALUE (kein &gt;XREF); das ist für die Erzeugung des Kontaktspiegels
nicht relevant.&lt;p&gt;

Für jedes Device ist ein Package erforderlich. Im Schaltplan werden nicht die Pin-Namen des
Symbols, sondern die Pad-Namen des Package angezeigt.&lt;p&gt;

Gehen Sie am besten so vor:&lt;p&gt;
1. Symbol erstellen und gewünschte Pin-Namen vergeben.&lt;p&gt;
2. &lt;u&gt;run e-packages-aus-devices-pin-ist-padname.ulp&lt;/u&gt; in Kommandozeile eintippen. Es entsteht
das komplette Device mit Package und den richtigen Pad-Namen.&lt;p&gt;
&lt;author&gt;librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="DREHSTROM_400/230V_3/N/PE_~50HZ">
<wire x1="18.542" y1="0.508" x2="19.812" y2="0.508" width="0.254" layer="94" curve="-123.850343"/>
<wire x1="19.812" y1="0.508" x2="21.082" y2="0.508" width="0.254" layer="94" curve="126.869898"/>
<text x="0" y="0" size="1.016" layer="94">Drehstrom 400/230V 3/N/PE</text>
<text x="21.717" y="0" size="1.016" layer="94">50Hz</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DREHSTROM_400/230V_3/N/PE_~50HZ" prefix="SYMBOL" uservalue="yes">
<description>Drehstrom N/PE 50Hz</description>
<gates>
<gate name="G$1" symbol="DREHSTROM_400/230V_3/N/PE_~50HZ" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="e-schuetze-relais">
<description>&lt;b&gt;Schütze und Relais für Elektropläne&lt;/b&gt;&lt;p&gt;

Wenn das von Ihnen gewünschte Schütz in der vorliegenden Bibliothek nicht vorhanden ist, laden Sie
die Bibliothek &lt;u&gt;e-symbole.lbr&lt;/u&gt;, und starten Sie das User-Languag-Programm  &lt;u&gt;e-bauteil-erstellen.ulp&lt;/u&gt;.&lt;p&gt; 

&lt;author&gt;Autor librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="HAUPTSCHUETZ_3-POL">
<description>Dummy</description>
<pad name="A1" x="-10.16" y="2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="A2" x="-10.16" y="-7.62" drill="0.5" diameter="1" shape="square"/>
<pad name="1" x="7.62" y="-7.62" drill="0.5" diameter="1" shape="square"/>
<pad name="2" x="7.62" y="2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="3" x="12.7" y="2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="4" x="12.7" y="-7.62" drill="0.5" diameter="1" shape="square"/>
<pad name="5" x="17.78" y="2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="6" x="17.78" y="-7.62" drill="0.5" diameter="1" shape="square"/>
</package>
<package name="RELAIS_2-POL-UM">
<description>Dummy</description>
<pad name="11" x="5.08" y="2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="12" x="2.54" y="-7.62" drill="0.5" diameter="1" shape="square"/>
<pad name="14" x="7.62" y="-7.62" drill="0.5" diameter="1" shape="square"/>
<pad name="21" x="12.7" y="2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="22" x="10.16" y="-7.62" drill="0.5" diameter="1" shape="square"/>
<pad name="24" x="15.24" y="-7.62" drill="0.5" diameter="1" shape="square"/>
<pad name="A1" x="-10.16" y="2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="A2" x="-10.16" y="-7.62" drill="0.5" diameter="1" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="SPULE">
<wire x1="3.175" y1="1.651" x2="0" y2="1.651" width="0.254" layer="94"/>
<wire x1="0" y1="1.651" x2="-3.175" y2="1.651" width="0.254" layer="94"/>
<wire x1="-3.175" y1="1.651" x2="-3.175" y2="-1.651" width="0.254" layer="94"/>
<wire x1="-3.175" y1="-1.651" x2="0" y2="-1.651" width="0.254" layer="94"/>
<wire x1="0" y1="-1.651" x2="3.175" y2="-1.651" width="0.254" layer="94"/>
<wire x1="3.175" y1="-1.651" x2="3.175" y2="1.651" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.651" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.651" width="0.1524" layer="94"/>
<text x="-3.81" y="2.54" size="1.778" layer="95" rot="R180">&gt;PART</text>
<text x="-3.81" y="0" size="1.778" layer="96" rot="R180">&gt;VALUE</text>
<text x="-3.81" y="-7.62" size="1.778" layer="96" rot="R180">&gt;FUNKTION</text>
<text x="-3.81" y="-2.54" size="1.778" layer="96" rot="R180">&gt;TYPE</text>
<text x="-3.81" y="-5.08" size="1.778" layer="96" rot="R180">&gt;HERSTELLER</text>
<pin name="A2" x="0" y="-5.08" visible="pad" length="short" direction="in" rot="R90"/>
<pin name="A1" x="0" y="5.08" visible="pad" length="short" direction="in" rot="R270"/>
</symbol>
<symbol name="SCHLIESSER_HAUPTSCHUETZ_3-POL">
<wire x1="-5.08" y1="0" x2="-3.81" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.143" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="1.397" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="3.81" y2="0" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="1.778" x2="-5.08" y2="2.413" width="0.1524" layer="94" curve="-157.380135"/>
<wire x1="-5.08" y1="-2.54" x2="-6.35" y2="1.524" width="0.254" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="1.778" width="0.1524" layer="94"/>
<wire x1="0" y1="1.778" x2="0" y2="2.413" width="0.1524" layer="94" curve="-157.380135"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="1.524" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.778" width="0.1524" layer="94"/>
<wire x1="5.08" y1="1.778" x2="5.08" y2="2.413" width="0.1524" layer="94" curve="-157.380135"/>
<wire x1="5.08" y1="-2.54" x2="3.81" y2="1.524" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="1.778" width="0.1524" layer="94"/>
<text x="-7.62" y="1.27" size="1.778" layer="95" rot="R180">&gt;PART</text>
<text x="-6.35" y="-1.27" size="1.27" layer="95" rot="R180">&gt;XREF</text>
<text x="-8.89" y="-3.81" size="1.778" layer="95" rot="R180">&gt;VALUE2</text>
<pin name="2" x="-5.08" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="1" x="-5.08" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="3" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="4" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="5" x="5.08" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="6" x="5.08" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
</symbol>
<symbol name="WECHSLER">
<wire x1="-2.54" y1="-1.524" x2="-1.27" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="-1.27" y2="-1.651" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="-1.524" width="0.1524" layer="94"/>
<text x="-3.81" y="2.54" size="1.778" layer="95" rot="R180">&gt;PART</text>
<text x="-3.81" y="0" size="1.27" layer="95" rot="R180">&gt;XREF</text>
<pin name="1" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="4" x="2.54" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="2" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="HAUPTSCHUETZ_3-POL" prefix="Q" uservalue="yes">
<description>Hauptschütz mit 3 Schließern</description>
<gates>
<gate name="G$1" symbol="SPULE" x="-10.16" y="5.08" addlevel="must"/>
<gate name="G$2" symbol="SCHLIESSER_HAUPTSCHUETZ_3-POL" x="7.62" y="5.08" addlevel="always"/>
</gates>
<devices>
<device name="" package="HAUPTSCHUETZ_3-POL">
<connects>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$2" pin="1" pad="1"/>
<connect gate="G$2" pin="2" pad="2"/>
<connect gate="G$2" pin="3" pad="3"/>
<connect gate="G$2" pin="4" pad="4"/>
<connect gate="G$2" pin="5" pad="5"/>
<connect gate="G$2" pin="6" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="FUNKTION" value="" constant="no"/>
<attribute name="HERSTELLER" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
<attribute name="VALUE2" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RELAIS_2-POL-UM" prefix="K">
<description>Relais mit 2 Wechsleschalter</description>
<gates>
<gate name="G$1" symbol="SPULE" x="-10.16" y="5.08" addlevel="must"/>
<gate name="1" symbol="WECHSLER" x="5.08" y="5.08"/>
<gate name="2" symbol="WECHSLER" x="12.7" y="5.08"/>
</gates>
<devices>
<device name="" package="RELAIS_2-POL-UM">
<connects>
<connect gate="1" pin="1" pad="11"/>
<connect gate="1" pin="2" pad="12"/>
<connect gate="1" pin="4" pad="14"/>
<connect gate="2" pin="1" pad="21"/>
<connect gate="2" pin="2" pad="22"/>
<connect gate="2" pin="4" pad="24"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="e-motoren">
<description>&lt;b&gt;Motoren für Elektropläne&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Autor librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MOTOR_3-POL_PE">
<description>Dummy</description>
<pad name="PE" x="10.16" y="10.16" drill="0.2" diameter="0.6" shape="square"/>
<pad name="U1" x="-5.08" y="10.16" drill="0.2" diameter="0.6" shape="square"/>
<pad name="V1" x="0" y="10.16" drill="0.2" diameter="0.6" shape="square"/>
<pad name="W1" x="5.08" y="10.16" drill="0.2" diameter="0.6" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="MOTOR_3-POL_PE">
<wire x1="5.08" y1="7.62" x2="5.08" y2="3.81" width="0.1524" layer="94"/>
<wire x1="0" y1="7.62" x2="0" y2="6.35" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="3.683" width="0.1524" layer="94"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="0" width="0.1524" layer="94"/>
<wire x1="10.16" y1="0" x2="6.35" y2="0" width="0.1524" layer="94"/>
<circle x="0" y="0" radius="6.35" width="0.2032" layer="94"/>
<text x="-2.54" y="0" size="3.81" layer="94">M</text>
<text x="-2.54" y="-3.81" size="2.54" layer="94">3~</text>
<text x="-3.81" y="-7.62" size="1.778" layer="95" rot="MR180">&gt;PART</text>
<text x="-3.81" y="-10.16" size="1.778" layer="96" rot="MR180">&gt;VALUE</text>
<text x="-3.81" y="-17.78" size="1.778" layer="96" rot="MR180">&gt;FUNKTION</text>
<text x="-3.81" y="-12.7" size="1.778" layer="96" rot="MR180">&gt;TYPE</text>
<text x="-3.81" y="-15.24" size="1.778" layer="96" rot="MR180">&gt;HERSTELLER</text>
<pin name="W1" x="5.08" y="10.16" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="V1" x="0" y="10.16" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="U1" x="-5.08" y="10.16" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="PE" x="10.16" y="10.16" visible="pad" length="short" direction="pas" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MOTOR_3-POL_PE" prefix="M" uservalue="yes">
<description>3-Phasen-Motor mit PE</description>
<gates>
<gate name="G$1" symbol="MOTOR_3-POL_PE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MOTOR_3-POL_PE">
<connects>
<connect gate="G$1" pin="PE" pad="PE"/>
<connect gate="G$1" pin="U1" pad="U1"/>
<connect gate="G$1" pin="V1" pad="V1"/>
<connect gate="G$1" pin="W1" pad="W1"/>
</connects>
<technologies>
<technology name="">
<attribute name="FUNKTION" value="" constant="no"/>
<attribute name="HERSTELLER" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="e-sicherungen">
<description>&lt;b&gt;Sicherungen und Begrenzer für Elektropläne&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Autor librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SICHERUNG_1-POL">
<description>Dummy</description>
<pad name="1" x="0" y="5.08" drill="0.2" diameter="0.6" shape="square"/>
<pad name="2" x="0" y="-5.08" drill="0.2" diameter="0.6" shape="square"/>
<text x="0" y="2.54" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="0" y="-2.54" size="1.27" layer="27" font="vector">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="SICHERUNG_1-POL">
<wire x1="1.27" y1="-2.54" x2="1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="1.27" y2="-2.54" width="0.254" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95" rot="R180">&gt;PART</text>
<text x="-2.54" y="0" size="1.778" layer="96" rot="R180">&gt;VALUE</text>
<text x="-2.54" y="-7.62" size="1.778" layer="96" rot="R180">&gt;FUNKTION</text>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R180">&gt;TYPE</text>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R180">&gt;HERSTELLER</text>
<pin name="1" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SICHERUNG_1-POL" prefix="F" uservalue="yes">
<description>Sicherung, 1-pol.</description>
<gates>
<gate name="G$1" symbol="SICHERUNG_1-POL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SICHERUNG_1-POL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="FUNKTION" value="" constant="no"/>
<attribute name="HERSTELLER" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="e-klemmen">
<description>&lt;b&gt;Klemmen für Elektropläne&lt;/b&gt;&lt;p&gt;

Diese Bibliothek enthält Klemmen sowie Devices für Einspeisung und Erdung. Folgendes ist zu
beachten: &lt;p&gt;

&lt;b&gt;Einspeisungs-Devices&lt;/b&gt;&lt;p&gt;

Enthalten kein Package, da kein entsprechendes Bauteil existiert, das in einer Materialliste erscheinen sollte. &lt;p&gt;

&lt;b&gt;Erdungs-Devices&lt;/b&gt;&lt;p&gt;

Enthalten ein Package, da in einer Materialliste zumindest ein Bauteil mit Klemmmöglichkeit
erscheinen muss.&lt;p&gt;

&lt;b&gt;Klemmen&lt;/b&gt;&lt;p&gt;

Klemmennamen müssen im Schaltplan mit &lt;i&gt;X&lt;/i&gt; beginnen, damit Klemmenplan und Brückenplan richtig erzeugt werden. Deshalb ist ihr Prefix im Device auf X gesetzt. Bitte auch im Schaltplan keine
anderen Namen verwenden. Siehe auch: User-Language-Programm e-klemmenplan.ulp.&lt;p&gt;

&lt;b&gt;Brückenklemmen&lt;/b&gt;&lt;p&gt;

Brückenklemmen sind Klemmen, die zusätzlich zu den Drahtanschlüssen die Möglichkeit bieten, mit einem Brückenkamm eine Reihe von Klemmen zu verbinden. Mit dem User-Language-Programm
e-brueckenverwaltung.ulp werden solche Brücken definiert und als Liste ausgegeben. In dessen
Hilfe erfahren Sie Details. Dieses Programm setzt einige Dinge bei den verwendeten Bauteilen
voraus (nur wichtig, wenn Sie eigene Brückenklemmen definieren wollen):&lt;p&gt;

Der Device-Name muss &lt;i&gt;BRUECKE&lt;/i&gt; enthalten, andere Klemmen dürfen  &lt;i&gt;BRUECKE&lt;/i&gt;
nicht als Namensbestandteil enthalten.&lt;p&gt;

Die Pin-Namen der Klemmensymbole müssen 1 und 2 sein. Die damit verbundenen Pad-Namen
des Package müssen 1.1, 1.2; 2.1, 2.2 usw. sein. Dabei entspricht die Zahl vor dem Punkt dem
Gate-Namen (1, 2, 3..).&lt;p&gt;

Jedes Klemmensymbol muss gesondert definiert sein, da es für den Referenz-Text zwei Attribute verwendet, deren Platzhalter je Symbol unterschiedlich sind. Der Name der Attribute ist 51 und 52,
wenn es sich um Klemme 5 handelt. Der Parameter &lt;i&gt;display&lt;/i&gt; für diese Attribute (der im
Attribut-Bearbeitungsmenü im Feld &lt;i&gt;Anzeige&lt;/i&gt; eingestellt wird) muss im Schaltplan auf
&lt;i&gt;Off&lt;/i&gt; stehen, sonst werden die Referenz-Texte nicht an der richtigen Stelle dargestellt.
Wenn Sie das ULP zur Brückenverwaltung verwenden, geschieht das automatisch.&lt;p&gt;

&lt;p&gt;&lt;author&gt;Autor librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="RELAISKLEMME_MIT_LED">
<description>Dummy</description>
<pad name="1" x="-2.54" y="-20.32" drill="0.5" diameter="1" shape="square"/>
<pad name="2" x="0" y="-20.32" drill="0.5" diameter="1" shape="square"/>
<pad name="3" x="2.54" y="-20.32" drill="0.5" diameter="1" shape="square"/>
<pad name="A1" x="-2.54" y="5.08" drill="0.5" diameter="1" shape="square"/>
<pad name="A2" x="2.54" y="5.08" drill="0.5" diameter="1" shape="square"/>
<text x="-1.27" y="-12.065" size="1.27" layer="25" font="vector" rot="R90">&gt;NAME</text>
<text x="1.905" y="-12.065" size="1.27" layer="27" font="vector" rot="R90">&gt;VALUE</text>
</package>
<package name="KLEMME_2-15">
<description>Dummy</description>
<pad name="1.1" x="0" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="1.2" x="0" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="2.1" x="5.08" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="2.2" x="5.08" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="3.1" x="10.16" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="3.2" x="10.16" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="4.1" x="15.24" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="4.2" x="15.24" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="5.1" x="20.32" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="5.2" x="20.32" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="6.1" x="25.4" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="6.2" x="25.4" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="7.1" x="30.48" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="7.2" x="30.48" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="8.1" x="35.56" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="8.2" x="35.56" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="9.1" x="40.64" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="9.2" x="40.64" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="10.1" x="45.72" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="10.2" x="45.72" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="11.1" x="50.8" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="11.2" x="50.8" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="12.1" x="55.88" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="12.2" x="55.88" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="13.1" x="60.96" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="13.2" x="60.96" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="14.1" x="66.04" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="14.2" x="66.04" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="15.1" x="71.12" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="15.2" x="71.12" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
</package>
<package name="KLEMME_2-20">
<description>Dummy</description>
<pad name="1.1" x="0" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="1.2" x="0" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="2.1" x="5.08" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="2.2" x="5.08" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="3.1" x="10.16" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="3.2" x="10.16" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="4.1" x="15.24" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="4.2" x="15.24" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="5.1" x="20.32" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="5.2" x="20.32" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="6.1" x="25.4" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="6.2" x="25.4" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="7.1" x="30.48" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="7.2" x="30.48" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="8.1" x="35.56" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="8.2" x="35.56" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="9.1" x="40.64" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="9.2" x="40.64" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="10.1" x="45.72" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="10.2" x="45.72" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="11.1" x="50.8" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="11.2" x="50.8" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="12.1" x="55.88" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="12.2" x="55.88" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="13.1" x="60.96" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="13.2" x="60.96" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="14.1" x="66.04" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="14.2" x="66.04" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="15.1" x="71.12" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="15.2" x="71.12" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="16.1" x="76.2" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="16.2" x="76.2" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="17.1" x="81.28" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="17.2" x="81.28" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="18.1" x="86.36" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="18.2" x="86.36" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="19.1" x="91.44" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="19.2" x="91.44" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="20.1" x="96.52" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="20.2" x="96.52" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="RELAISKLEMME_MIT_LED">
<wire x1="-2.54" y1="-5.08" x2="-2.54" y2="-2.54" width="0.0508" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-0.635" y2="-2.54" width="0.0508" layer="94"/>
<wire x1="0" y1="-3.81" x2="-0.762" y2="-2.286" width="0.0508" layer="94"/>
<wire x1="0.635" y1="-2.54" x2="2.54" y2="-2.54" width="0.0508" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="-5.08" width="0.0508" layer="94"/>
<wire x1="-2.54" y1="4.445" x2="-2.54" y2="2.54" width="0.0508" layer="94"/>
<wire x1="2.54" y1="4.445" x2="2.54" y2="2.54" width="0.0508" layer="94"/>
<wire x1="-0.635" y1="3.683" x2="-0.635" y2="2.54" width="0.0508" layer="94"/>
<wire x1="-0.635" y1="2.54" x2="-0.635" y2="1.27" width="0.0508" layer="94"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.0508" layer="94"/>
<wire x1="0.635" y1="1.27" x2="0.635" y2="2.54" width="0.0508" layer="94"/>
<wire x1="0.635" y1="2.54" x2="0.635" y2="3.683" width="0.0508" layer="94"/>
<wire x1="0.635" y1="3.683" x2="-0.635" y2="3.683" width="0.0508" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-0.635" y2="2.54" width="0.0508" layer="94"/>
<wire x1="0.635" y1="2.54" x2="2.54" y2="2.54" width="0.0508" layer="94"/>
<wire x1="0" y1="-3.81" x2="0" y2="-5.08" width="0.0508" layer="94"/>
<wire x1="-2.54" y1="8.89" x2="-0.635" y2="8.89" width="0.0508" layer="94"/>
<wire x1="-0.127" y1="8.89" x2="2.54" y2="8.89" width="0.0508" layer="94"/>
<wire x1="-0.635" y1="9.271" x2="-0.635" y2="8.89" width="0.0508" layer="94"/>
<wire x1="-0.635" y1="8.89" x2="-0.635" y2="8.509" width="0.0508" layer="94"/>
<wire x1="-0.635" y1="8.89" x2="-0.127" y2="8.509" width="0.0508" layer="94"/>
<wire x1="-0.127" y1="8.509" x2="-0.127" y2="9.271" width="0.0508" layer="94"/>
<wire x1="-0.127" y1="9.271" x2="-0.635" y2="8.89" width="0.0508" layer="94"/>
<wire x1="-0.762" y1="9.271" x2="-1.143" y2="9.652" width="0.0508" layer="94"/>
<wire x1="-0.508" y1="9.525" x2="-0.889" y2="9.906" width="0.0508" layer="94"/>
<wire x1="3.81" y1="10.16" x2="3.81" y2="-10.16" width="0.254" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="-3.81" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-3.81" y1="-10.16" x2="-3.81" y2="10.16" width="0.254" layer="94"/>
<wire x1="-3.81" y1="10.16" x2="-2.54" y2="10.16" width="0.254" layer="94"/>
<wire x1="-2.54" y1="10.16" x2="2.54" y2="10.16" width="0.254" layer="94"/>
<wire x1="2.54" y1="10.16" x2="3.81" y2="10.16" width="0.254" layer="94"/>
<wire x1="-2.54" y1="10.16" x2="-2.54" y2="8.509" width="0.0508" layer="94"/>
<wire x1="2.54" y1="10.16" x2="2.54" y2="8.509" width="0.0508" layer="94"/>
<text x="-2.54" y="-1.27" size="1.778" layer="95">&gt;PART</text>
<text x="-5.08" y="-7.62" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="A1" x="-2.54" y="12.7" length="short" direction="pas" rot="R270"/>
<pin name="A2" x="2.54" y="12.7" length="short" direction="pas" rot="R270"/>
<pin name="12" x="-2.54" y="-12.7" length="short" direction="pas" rot="R90"/>
<pin name="13" x="0" y="-12.7" length="short" direction="pas" rot="R90"/>
<pin name="14" x="2.54" y="-12.7" length="short" direction="pas" rot="R90"/>
<polygon width="0.0508" layer="94">
<vertex x="-1.143" y="9.652"/>
<vertex x="-1.016" y="9.398"/>
<vertex x="-0.889" y="9.525"/>
</polygon>
<polygon width="0.0508" layer="94">
<vertex x="-0.889" y="9.906"/>
<vertex x="-0.762" y="9.652"/>
<vertex x="-0.635" y="9.779"/>
</polygon>
</symbol>
<symbol name="KLEMME_2-15">
<wire x1="5.08" y1="5.08" x2="5.08" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="10.16" y1="5.08" x2="10.16" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="0" y1="1.5216" x2="0" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="0" y1="-3.5584" x2="0" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="5.08" y1="1.5216" x2="5.08" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-3.5584" x2="5.08" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="10.16" y1="1.5216" x2="10.16" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-3.5584" x2="10.16" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="15.24" y1="5.08" x2="15.24" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="15.24" y1="1.5216" x2="15.24" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="15.24" y1="-3.5584" x2="15.24" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="20.32" y1="5.08" x2="20.32" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="20.32" y1="1.5216" x2="20.32" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="20.32" y1="-3.5584" x2="20.32" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="25.4" y1="5.08" x2="25.4" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="25.4" y1="1.5216" x2="25.4" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="25.4" y1="-3.5584" x2="25.4" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="30.48" y1="5.08" x2="30.48" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="30.48" y1="1.5216" x2="30.48" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="30.48" y1="-3.5584" x2="30.48" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="35.56" y1="5.08" x2="35.56" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="35.56" y1="1.5216" x2="35.56" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="35.56" y1="-3.5584" x2="35.56" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="40.64" y1="5.08" x2="40.64" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="40.64" y1="1.5216" x2="40.64" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="40.64" y1="-3.5584" x2="40.64" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="45.72" y1="5.08" x2="45.72" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="45.72" y1="1.5216" x2="45.72" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="45.72" y1="-3.5584" x2="45.72" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="50.8" y1="5.08" x2="50.8" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="50.8" y1="1.5216" x2="50.8" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="50.8" y1="-3.5584" x2="50.8" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="55.88" y1="5.08" x2="55.88" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="55.88" y1="1.5216" x2="55.88" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-3.5584" x2="55.88" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="60.96" y1="5.08" x2="60.96" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="60.96" y1="1.5216" x2="60.96" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="60.96" y1="-3.5584" x2="60.96" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="66.04" y1="5.08" x2="66.04" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="66.04" y1="1.5216" x2="66.04" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="66.04" y1="-3.5584" x2="66.04" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="71.12" y1="1.5216" x2="71.12" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="71.12" y1="-3.5584" x2="71.12" y2="-5.08" width="0.1524" layer="94"/>
<circle x="0" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="0" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="5.08" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="5.08" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="10.16" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="10.16" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="15.24" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="15.24" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="20.32" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="20.32" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="25.4" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="25.4" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="30.48" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="30.48" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="35.56" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="35.56" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="40.64" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="40.64" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="45.72" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="45.72" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="50.8" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="50.8" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="55.88" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="55.88" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="60.96" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="60.96" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="66.04" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="66.04" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="71.12" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="71.12" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95" rot="R180">&gt;PART</text>
<text x="-2.54" y="0" size="1.778" layer="96" rot="R180">&gt;VALUE</text>
<pin name="1.1" x="0" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="1.2" x="0" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="2.1" x="5.08" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="2.2" x="5.08" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="3.1" x="10.16" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="3.2" x="10.16" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="4.1" x="15.24" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="4.2" x="15.24" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="5.1" x="20.32" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="5.2" x="20.32" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="6.1" x="25.4" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="6.2" x="25.4" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="7.1" x="30.48" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="7.2" x="30.48" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="8.1" x="35.56" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="8.2" x="35.56" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="9.1" x="40.64" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="9.2" x="40.64" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="10.1" x="45.72" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="10.2" x="45.72" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="11.1" x="50.8" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="11.2" x="50.8" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="12.1" x="55.88" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="12.2" x="55.88" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="13.1" x="60.96" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="13.2" x="60.96" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="14.1" x="66.04" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="14.2" x="66.04" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="15.1" x="71.12" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="15.2" x="71.12" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
</symbol>
<symbol name="KLEMME_2-20">
<wire x1="5.08" y1="5.08" x2="5.08" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="10.16" y1="5.08" x2="10.16" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="0" y1="1.5216" x2="0" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="0" y1="-3.5584" x2="0" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="5.08" y1="1.5216" x2="5.08" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-3.5584" x2="5.08" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="10.16" y1="1.5216" x2="10.16" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-3.5584" x2="10.16" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="15.24" y1="5.08" x2="15.24" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="15.24" y1="1.5216" x2="15.24" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="15.24" y1="-3.5584" x2="15.24" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="20.32" y1="5.08" x2="20.32" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="20.32" y1="1.5216" x2="20.32" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="20.32" y1="-3.5584" x2="20.32" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="25.4" y1="5.08" x2="25.4" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="25.4" y1="1.5216" x2="25.4" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="25.4" y1="-3.5584" x2="25.4" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="30.48" y1="5.08" x2="30.48" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="30.48" y1="1.5216" x2="30.48" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="30.48" y1="-3.5584" x2="30.48" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="35.56" y1="5.08" x2="35.56" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="35.56" y1="1.5216" x2="35.56" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="35.56" y1="-3.5584" x2="35.56" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="40.64" y1="5.08" x2="40.64" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="40.64" y1="1.5216" x2="40.64" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="40.64" y1="-3.5584" x2="40.64" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="45.72" y1="5.08" x2="45.72" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="45.72" y1="1.5216" x2="45.72" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="45.72" y1="-3.5584" x2="45.72" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="50.8" y1="5.08" x2="50.8" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="50.8" y1="1.5216" x2="50.8" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="50.8" y1="-3.5584" x2="50.8" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="55.88" y1="5.08" x2="55.88" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="55.88" y1="1.5216" x2="55.88" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-3.5584" x2="55.88" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="60.96" y1="5.08" x2="60.96" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="60.96" y1="1.5216" x2="60.96" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="60.96" y1="-3.5584" x2="60.96" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="66.04" y1="5.08" x2="66.04" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="66.04" y1="1.5216" x2="66.04" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="66.04" y1="-3.5584" x2="66.04" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="71.12" y1="1.5216" x2="71.12" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="71.12" y1="-3.5584" x2="71.12" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="76.2" y1="5.08" x2="76.2" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="76.2" y1="1.5216" x2="76.2" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="76.2" y1="-3.5584" x2="76.2" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="81.28" y1="5.08" x2="81.28" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="81.28" y1="1.5216" x2="81.28" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="81.28" y1="-3.5584" x2="81.28" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="86.36" y1="5.08" x2="86.36" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="86.36" y1="1.5216" x2="86.36" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="86.36" y1="-3.5584" x2="86.36" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="91.44" y1="5.08" x2="91.44" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="91.44" y1="1.5216" x2="91.44" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="91.44" y1="-3.5584" x2="91.44" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="96.52" y1="5.08" x2="96.52" y2="3.5584" width="0.1524" layer="94"/>
<wire x1="96.52" y1="1.5216" x2="96.52" y2="-1.5216" width="0.1524" layer="94"/>
<wire x1="96.52" y1="-3.5584" x2="96.52" y2="-5.08" width="0.1524" layer="94"/>
<circle x="0" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="0" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="5.08" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="5.08" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="10.16" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="10.16" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="15.24" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="15.24" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="20.32" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="20.32" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="25.4" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="25.4" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="30.48" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="30.48" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="35.56" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="35.56" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="40.64" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="40.64" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="45.72" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="45.72" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="50.8" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="50.8" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="55.88" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="55.88" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="60.96" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="60.96" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="66.04" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="66.04" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="71.12" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="71.12" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="76.2" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="76.2" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="81.28" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="81.28" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="86.36" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="86.36" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="91.44" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="91.44" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<circle x="96.52" y="-2.5272" radius="1.0056" width="0.1524" layer="94"/>
<circle x="96.52" y="2.5528" radius="1.0056" width="0.1524" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95" rot="R180">&gt;PART</text>
<text x="-2.54" y="0" size="1.778" layer="96" rot="R180">&gt;VALUE</text>
<pin name="1.1" x="0" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="1.2" x="0" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="2.1" x="5.08" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="2.2" x="5.08" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="3.1" x="10.16" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="3.2" x="10.16" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="4.1" x="15.24" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="4.2" x="15.24" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="5.1" x="20.32" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="5.2" x="20.32" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="6.1" x="25.4" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="6.2" x="25.4" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="7.1" x="30.48" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="7.2" x="30.48" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="8.1" x="35.56" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="8.2" x="35.56" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="9.1" x="40.64" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="9.2" x="40.64" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="10.1" x="45.72" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="10.2" x="45.72" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="11.1" x="50.8" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="11.2" x="50.8" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="12.1" x="55.88" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="12.2" x="55.88" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="13.1" x="60.96" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="13.2" x="60.96" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="14.1" x="66.04" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="14.2" x="66.04" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="15.1" x="71.12" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="15.2" x="71.12" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="16.1" x="76.2" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="16.2" x="76.2" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="17.1" x="81.28" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="17.2" x="81.28" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="18.1" x="86.36" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="18.2" x="86.36" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="19.1" x="91.44" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="19.2" x="91.44" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="20.1" x="96.52" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="20.2" x="96.52" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RELAISKLEMME_MIT_LED" prefix="X" uservalue="yes">
<description>Klemme mit Relais (Wechselkontakt) und LED&lt;p&gt;</description>
<gates>
<gate name="G$1" symbol="RELAISKLEMME_MIT_LED" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RELAISKLEMME_MIT_LED">
<connects>
<connect gate="G$1" pin="12" pad="1"/>
<connect gate="G$1" pin="13" pad="2"/>
<connect gate="G$1" pin="14" pad="3"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="KLEMME_2-15" prefix="X" uservalue="yes">
<description>Klemme 2 15</description>
<gates>
<gate name="G$1" symbol="KLEMME_2-15" x="0" y="0"/>
</gates>
<devices>
<device name="" package="KLEMME_2-15">
<connects>
<connect gate="G$1" pin="1.1" pad="1.1"/>
<connect gate="G$1" pin="1.2" pad="1.2"/>
<connect gate="G$1" pin="10.1" pad="10.1"/>
<connect gate="G$1" pin="10.2" pad="10.2"/>
<connect gate="G$1" pin="11.1" pad="11.1"/>
<connect gate="G$1" pin="11.2" pad="11.2"/>
<connect gate="G$1" pin="12.1" pad="12.1"/>
<connect gate="G$1" pin="12.2" pad="12.2"/>
<connect gate="G$1" pin="13.1" pad="13.1"/>
<connect gate="G$1" pin="13.2" pad="13.2"/>
<connect gate="G$1" pin="14.1" pad="14.1"/>
<connect gate="G$1" pin="14.2" pad="14.2"/>
<connect gate="G$1" pin="15.1" pad="15.1"/>
<connect gate="G$1" pin="15.2" pad="15.2"/>
<connect gate="G$1" pin="2.1" pad="2.1"/>
<connect gate="G$1" pin="2.2" pad="2.2"/>
<connect gate="G$1" pin="3.1" pad="3.1"/>
<connect gate="G$1" pin="3.2" pad="3.2"/>
<connect gate="G$1" pin="4.1" pad="4.1"/>
<connect gate="G$1" pin="4.2" pad="4.2"/>
<connect gate="G$1" pin="5.1" pad="5.1"/>
<connect gate="G$1" pin="5.2" pad="5.2"/>
<connect gate="G$1" pin="6.1" pad="6.1"/>
<connect gate="G$1" pin="6.2" pad="6.2"/>
<connect gate="G$1" pin="7.1" pad="7.1"/>
<connect gate="G$1" pin="7.2" pad="7.2"/>
<connect gate="G$1" pin="8.1" pad="8.1"/>
<connect gate="G$1" pin="8.2" pad="8.2"/>
<connect gate="G$1" pin="9.1" pad="9.1"/>
<connect gate="G$1" pin="9.2" pad="9.2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="KLEMME_2-20" prefix="X" uservalue="yes">
<description>Klemme 2 20</description>
<gates>
<gate name="G$1" symbol="KLEMME_2-20" x="0" y="0"/>
</gates>
<devices>
<device name="" package="KLEMME_2-20">
<connects>
<connect gate="G$1" pin="1.1" pad="1.1"/>
<connect gate="G$1" pin="1.2" pad="1.2"/>
<connect gate="G$1" pin="10.1" pad="10.1"/>
<connect gate="G$1" pin="10.2" pad="10.2"/>
<connect gate="G$1" pin="11.1" pad="11.1"/>
<connect gate="G$1" pin="11.2" pad="11.2"/>
<connect gate="G$1" pin="12.1" pad="12.1"/>
<connect gate="G$1" pin="12.2" pad="12.2"/>
<connect gate="G$1" pin="13.1" pad="13.1"/>
<connect gate="G$1" pin="13.2" pad="13.2"/>
<connect gate="G$1" pin="14.1" pad="14.1"/>
<connect gate="G$1" pin="14.2" pad="14.2"/>
<connect gate="G$1" pin="15.1" pad="15.1"/>
<connect gate="G$1" pin="15.2" pad="15.2"/>
<connect gate="G$1" pin="16.1" pad="16.1"/>
<connect gate="G$1" pin="16.2" pad="16.2"/>
<connect gate="G$1" pin="17.1" pad="17.1"/>
<connect gate="G$1" pin="17.2" pad="17.2"/>
<connect gate="G$1" pin="18.1" pad="18.1"/>
<connect gate="G$1" pin="18.2" pad="18.2"/>
<connect gate="G$1" pin="19.1" pad="19.1"/>
<connect gate="G$1" pin="19.2" pad="19.2"/>
<connect gate="G$1" pin="2.1" pad="2.1"/>
<connect gate="G$1" pin="2.2" pad="2.2"/>
<connect gate="G$1" pin="20.1" pad="20.1"/>
<connect gate="G$1" pin="20.2" pad="20.2"/>
<connect gate="G$1" pin="3.1" pad="3.1"/>
<connect gate="G$1" pin="3.2" pad="3.2"/>
<connect gate="G$1" pin="4.1" pad="4.1"/>
<connect gate="G$1" pin="4.2" pad="4.2"/>
<connect gate="G$1" pin="5.1" pad="5.1"/>
<connect gate="G$1" pin="5.2" pad="5.2"/>
<connect gate="G$1" pin="6.1" pad="6.1"/>
<connect gate="G$1" pin="6.2" pad="6.2"/>
<connect gate="G$1" pin="7.1" pad="7.1"/>
<connect gate="G$1" pin="7.2" pad="7.2"/>
<connect gate="G$1" pin="8.1" pad="8.1"/>
<connect gate="G$1" pin="8.2" pad="8.2"/>
<connect gate="G$1" pin="9.1" pad="9.1"/>
<connect gate="G$1" pin="9.2" pad="9.2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="e-motorschutzschalter">
<description>Motorschutzschalter für Elektropläne</description>
<packages>
<package name="MOTORSCHUTZSCHALTER_3-POL_THERM_AUSLOESUNG_ALTERNATIV">
<description>Dummy</description>
<pad name="1" x="-5.08" y="-2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="2" x="-5.08" y="-12.7" drill="0.5" diameter="1" shape="square"/>
<pad name="3" x="0" y="-2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="4" x="0" y="-12.7" drill="0.5" diameter="1" shape="square"/>
<pad name="5" x="5.08" y="-2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="6" x="5.08" y="-12.7" drill="0.5" diameter="1" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="MOTORSCHUTZSCHALTER_3-POL_THERM_AUSLOESUNG-ALTERNATIV">
<wire x1="-5.08" y1="1.778" x2="-7.62" y2="1.778" width="0.254" layer="94"/>
<wire x1="-7.62" y1="1.778" x2="-7.62" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-1.524" x2="-5.08" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-1.524" x2="-2.54" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-5.08" y1="1.778" x2="-5.08" y2="0.762" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="0.762" x2="-6.096" y2="0.762" width="0.1524" layer="94"/>
<wire x1="-6.096" y1="0.762" x2="-6.096" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="-6.096" y1="-0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-0.508" x2="-5.08" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="0" y1="1.778" x2="-2.54" y2="1.778" width="0.254" layer="94"/>
<wire x1="-2.54" y1="1.778" x2="-5.08" y2="1.778" width="0.254" layer="94"/>
<wire x1="-2.54" y1="1.778" x2="-2.54" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.524" x2="0" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0" y1="-1.524" x2="2.54" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0" y1="1.778" x2="0" y2="0.762" width="0.1524" layer="94"/>
<wire x1="0" y1="0.762" x2="-1.016" y2="0.762" width="0.1524" layer="94"/>
<wire x1="-1.016" y1="0.762" x2="-1.016" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="-1.016" y1="-0.508" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-0.508" x2="0" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="7.62" y1="1.778" x2="5.08" y2="1.778" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.778" x2="2.54" y2="1.778" width="0.254" layer="94"/>
<wire x1="2.54" y1="1.778" x2="0" y2="1.778" width="0.254" layer="94"/>
<wire x1="2.54" y1="1.778" x2="2.54" y2="-1.524" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.524" x2="5.08" y2="-1.524" width="0.254" layer="94"/>
<wire x1="5.08" y1="-1.524" x2="7.62" y2="-1.524" width="0.254" layer="94"/>
<wire x1="7.62" y1="-1.524" x2="7.62" y2="1.778" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.778" x2="5.08" y2="0.762" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0.762" x2="4.064" y2="0.762" width="0.1524" layer="94"/>
<wire x1="4.064" y1="0.762" x2="4.064" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="4.064" y1="-0.508" x2="5.08" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-0.508" x2="5.08" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-1.524" x2="-5.08" y2="-3.302" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.524" x2="0" y2="-3.302" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-1.524" x2="5.08" y2="-3.302" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="3.556" x2="-5.08" y2="1.778" width="0.1524" layer="94"/>
<wire x1="0" y1="3.556" x2="0" y2="1.778" width="0.1524" layer="94"/>
<wire x1="5.08" y1="3.556" x2="5.08" y2="1.778" width="0.1524" layer="94"/>
<text x="-8.89" y="2.54" size="1.778" layer="95" rot="R180">&gt;PART</text>
<text x="-8.89" y="0" size="1.778" layer="96" rot="R180">&gt;VALUE</text>
<text x="-8.89" y="-7.62" size="1.778" layer="96" rot="R180">&gt;FUNKTION</text>
<text x="-8.89" y="-2.54" size="1.778" layer="96" rot="R180">&gt;TYPE</text>
<text x="-8.89" y="-5.08" size="1.778" layer="96" rot="R180">&gt;HERSTELLER</text>
<pin name="2" x="-5.08" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="1" x="-5.08" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="4" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="3" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="6" x="5.08" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="5" x="5.08" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MOTORSCHUTZSCHALTER_3-POL_THERM_AUSLOESUNG_ALTERNATIV" prefix="F" uservalue="yes">
<description>Motorschutzschalter 3-pol. mit thermischer Auslösung, allgemein (alternativ)</description>
<gates>
<gate name="G$1" symbol="MOTORSCHUTZSCHALTER_3-POL_THERM_AUSLOESUNG-ALTERNATIV" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MOTORSCHUTZSCHALTER_3-POL_THERM_AUSLOESUNG_ALTERNATIV">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="FUNKTION" value="" constant="no"/>
<attribute name="HERSTELLER" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="e-stromversorgungselemente">
<description>&lt;b&gt;Stromversorgungselemente für Elektropläne&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Autor librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="NETZTEIL_MURR_24V">
<description>Dummy</description>
<pad name="1" x="-5.08" y="-22.86" drill="0.5" diameter="1" shape="square"/>
<pad name="2" x="5.08" y="-22.86" drill="0.5" diameter="1" shape="square"/>
<pad name="3" x="-5.08" y="7.62" drill="0.5" diameter="1" shape="square"/>
<pad name="4" x="0" y="7.62" drill="0.5" diameter="1" shape="square"/>
<pad name="5" x="5.08" y="7.62" drill="0.5" diameter="1" shape="square"/>
</package>
<package name="NETZTEIL_GLEICHSPANNUNG">
<description>Dummy</description>
<pad name="3" x="10.16" y="-5.08" drill="0.5" diameter="1" shape="square"/>
<pad name="4" x="10.16" y="-10.16" drill="0.5" diameter="1" shape="square"/>
<pad name="1" x="-10.16" y="-5.08" drill="0.5" diameter="1" shape="square"/>
<pad name="2" x="-10.16" y="-10.16" drill="0.5" diameter="1" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="NETZTEIL_MURR_24V">
<wire x1="-7.62" y1="12.7" x2="-2.54" y2="12.7" width="0.254" layer="94"/>
<wire x1="-2.54" y1="12.7" x2="2.54" y2="12.7" width="0.254" layer="94"/>
<wire x1="2.54" y1="12.7" x2="7.62" y2="12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="12.7" x2="7.62" y2="6.35" width="0.254" layer="94"/>
<wire x1="7.62" y1="6.35" x2="7.62" y2="-3.81" width="0.254" layer="94"/>
<wire x1="7.62" y1="-3.81" x2="7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="0" y2="-12.7" width="0.254" layer="94"/>
<wire x1="0" y1="-12.7" x2="-7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-12.7" x2="-7.62" y2="-3.81" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-3.81" x2="-7.62" y2="6.35" width="0.254" layer="94"/>
<wire x1="-7.62" y1="6.35" x2="-7.62" y2="12.7" width="0.254" layer="94"/>
<wire x1="-7.62" y1="6.35" x2="-2.54" y2="6.35" width="0.254" layer="94"/>
<wire x1="-2.54" y1="6.35" x2="2.54" y2="6.35" width="0.254" layer="94"/>
<wire x1="2.54" y1="6.35" x2="7.62" y2="6.35" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-3.81" x2="0" y2="-3.81" width="0.254" layer="94"/>
<wire x1="0" y1="-3.81" x2="7.62" y2="-3.81" width="0.254" layer="94"/>
<wire x1="-2.54" y1="12.7" x2="-2.54" y2="6.35" width="0.254" layer="94"/>
<wire x1="2.54" y1="12.7" x2="2.54" y2="7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="7.62" x2="2.54" y2="6.35" width="0.254" layer="94"/>
<wire x1="0" y1="-3.81" x2="0" y2="-12.7" width="0.254" layer="94"/>
<text x="-5.08" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<text x="15.24" y="-10.16" size="1.778" layer="96" rot="R90">&gt;FUNKTION</text>
<text x="-5.08" y="2.54" size="1.778" layer="95">&gt;PART</text>
<text x="10.16" y="-10.16" size="1.778" layer="96" rot="R90">&gt;TYPE</text>
<text x="12.7" y="-10.16" size="1.778" layer="96" rot="R90">&gt;HERSTELLER</text>
<pin name="N" x="0" y="15.24" length="short" direction="in" rot="R270"/>
<pin name="L" x="-5.08" y="15.24" length="short" direction="in" rot="R270"/>
<pin name="PE" x="5.08" y="15.24" length="short" direction="in" rot="R270"/>
<pin name="+24V" x="-5.08" y="-15.24" length="short" direction="pas" rot="R90"/>
<pin name="0V" x="5.08" y="-15.24" length="short" direction="pas" rot="R90"/>
</symbol>
<symbol name="NETZTEIL_GLEICHSPANNUNG">
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="1.524" y1="-1.778" x2="4.318" y2="-1.778" width="0.1524" layer="94"/>
<wire x1="1.524" y1="-2.286" x2="2.032" y2="-2.286" width="0.1524" layer="94"/>
<wire x1="2.667" y1="-2.286" x2="3.175" y2="-2.286" width="0.1524" layer="94"/>
<wire x1="3.81" y1="-2.286" x2="4.318" y2="-2.286" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="1.397" x2="-4.318" y2="1.651" width="0.1524" layer="94"/>
<wire x1="-4.318" y1="1.651" x2="-3.81" y2="2.159" width="0.1524" layer="94" curve="-36.869898"/>
<wire x1="-3.81" y1="2.159" x2="-3.556" y2="2.159" width="0.1524" layer="94" curve="-53.130102"/>
<wire x1="-3.556" y1="2.159" x2="-3.048" y2="1.651" width="0.1524" layer="94" curve="-36.869898"/>
<wire x1="-3.048" y1="1.651" x2="-2.921" y2="1.397" width="0.1524" layer="94"/>
<wire x1="-1.397" y1="1.397" x2="-1.524" y2="1.143" width="0.1524" layer="94"/>
<wire x1="-1.524" y1="1.143" x2="-2.032" y2="0.635" width="0.1524" layer="94" curve="-36.869898"/>
<wire x1="-2.032" y1="0.635" x2="-2.286" y2="0.635" width="0.1524" layer="94" curve="-53.130102"/>
<wire x1="-2.286" y1="0.635" x2="-2.794" y2="1.143" width="0.1524" layer="94" curve="-36.869898"/>
<wire x1="-2.794" y1="1.143" x2="-2.921" y2="1.397" width="0.1524" layer="94"/>
<text x="-5.08" y="6.35" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-4.445" y="2.921" size="1.524" layer="96">&gt;EINGANGSSPANNUNG</text>
<text x="4.445" y="-3.048" size="1.524" layer="96" rot="R180">&gt;AUSGANGSSPANNUNG</text>
<text x="-5.08" y="-15.24" size="1.778" layer="96">&gt;FUNKTION</text>
<text x="-5.08" y="-10.16" size="1.778" layer="96">&gt;TYPE</text>
<text x="-5.08" y="-12.7" size="1.778" layer="96">&gt;HERSTELLER</text>
<pin name="1" x="-10.16" y="2.54" visible="pad" length="middle" direction="pas"/>
<pin name="2" x="-10.16" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="3" x="10.16" y="2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="4" x="10.16" y="-2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="NETZTEIL_MURR_24V" prefix="G" uservalue="yes">
<description>Netzteil, Murr, 24 Volt</description>
<gates>
<gate name="G$1" symbol="NETZTEIL_MURR_24V" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NETZTEIL_MURR_24V">
<connects>
<connect gate="G$1" pin="+24V" pad="1"/>
<connect gate="G$1" pin="0V" pad="2"/>
<connect gate="G$1" pin="L" pad="3"/>
<connect gate="G$1" pin="N" pad="4"/>
<connect gate="G$1" pin="PE" pad="5"/>
</connects>
<technologies>
<technology name="">
<attribute name="FUNKTION" value="" constant="no"/>
<attribute name="HERSTELLER" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="NETZTEIL_GLEICHSPANNUNG" prefix="G" uservalue="yes">
<description>Netzteil, Gleichspannung</description>
<gates>
<gate name="G$1" symbol="NETZTEIL_GLEICHSPANNUNG" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NETZTEIL_GLEICHSPANNUNG">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="AUSGANGSSPANNUNG" value="" constant="no"/>
<attribute name="EINGANGSSPANNUNG" value="" constant="no"/>
<attribute name="FUNKTION" value="" constant="no"/>
<attribute name="HERSTELLER" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
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
<part name="RAHMEN1" library="e-elektro-zeichnungsrahmen" deviceset="RAHMEN_A4_8Z-19S_SPS" device=""/>
<part name="SYMBOL1" library="e-symbole" deviceset="DREHSTROM_400/230V_3/N/PE_~50HZ" device=""/>
<part name="Q1" library="e-schuetze-relais" deviceset="HAUPTSCHUETZ_3-POL" device=""/>
<part name="M1" library="e-motoren" deviceset="MOTOR_3-POL_PE" device=""/>
<part name="F1" library="e-sicherungen" deviceset="SICHERUNG_1-POL" device=""/>
<part name="K2" library="e-schuetze-relais" deviceset="RELAIS_2-POL-UM" device=""/>
<part name="Q1.1" library="e-klemmen" deviceset="RELAISKLEMME_MIT_LED" device=""/>
<part name="Q1.2" library="e-klemmen" deviceset="RELAISKLEMME_MIT_LED" device=""/>
<part name="X3" library="e-klemmen" deviceset="KLEMME_2-15" device=""/>
<part name="FU1" library="e-motorschutzschalter" deviceset="MOTORSCHUTZSCHALTER_3-POL_THERM_AUSLOESUNG_ALTERNATIV" device=""/>
<part name="X4" library="e-klemmen" deviceset="KLEMME_2-20" device=""/>
<part name="G2" library="e-stromversorgungselemente" deviceset="NETZTEIL_MURR_24V" device=""/>
<part name="G1" library="e-stromversorgungselemente" deviceset="NETZTEIL_GLEICHSPANNUNG" device=""/>
<part name="F3" library="e-sicherungen" deviceset="SICHERUNG_1-POL" device=""/>
<part name="M2" library="e-motoren" deviceset="MOTOR_3-POL_PE" device=""/>
<part name="Q1.3" library="e-klemmen" deviceset="RELAISKLEMME_MIT_LED" device=""/>
<part name="Q1.4" library="e-klemmen" deviceset="RELAISKLEMME_MIT_LED" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="175.26" y="-27.94" size="1.778" layer="91">24+</text>
<text x="198.12" y="-53.34" size="1.778" layer="91">24+</text>
<text x="185.42" y="-27.94" size="1.778" layer="91">12+</text>
<text x="205.74" y="-27.94" size="1.778" layer="91">12+</text>
</plain>
<instances>
<instance part="RAHMEN1" gate="G$1" x="12.7" y="-139.7"/>
<instance part="SYMBOL1" gate="G$1" x="22.86" y="53.34"/>
<instance part="Q1" gate="G$1" x="160.02" y="-50.8"/>
<instance part="Q1" gate="G$2" x="38.1" y="-12.7"/>
<instance part="M1" gate="G$1" x="63.5" y="48.26" rot="R180"/>
<instance part="F1" gate="G$1" x="78.74" y="-27.94" rot="R180"/>
<instance part="K2" gate="G$1" x="327.66" y="27.94"/>
<instance part="Q1.1" gate="G$1" x="182.88" y="-40.64" rot="R180"/>
<instance part="Q1.2" gate="G$1" x="195.58" y="-40.64" rot="R180"/>
<instance part="X3" gate="G$1" x="33.02" y="17.78"/>
<instance part="FU1" gate="G$1" x="38.1" y="-33.02"/>
<instance part="X4" gate="G$1" x="147.32" y="17.78"/>
<instance part="G2" gate="G$1" x="121.92" y="-17.78" rot="R90"/>
<instance part="G1" gate="G$1" x="116.84" y="-35.56"/>
<instance part="F3" gate="G$1" x="170.18" y="0"/>
<instance part="M2" gate="G$1" x="38.1" y="45.72" rot="R180"/>
<instance part="Q1.3" gate="G$1" x="213.36" y="-40.64" rot="R180"/>
<instance part="Q1.4" gate="G$1" x="223.52" y="-40.64" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="L1" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="1.1"/>
<pinref part="Q1" gate="G$2" pin="1"/>
<wire x1="33.02" y1="10.16" x2="33.02" y2="-7.62" width="0.1524" layer="91"/>
<junction x="33.02" y="-7.62"/>
<junction x="33.02" y="10.16"/>
<label x="33.02" y="5.08" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="L2" class="0">
<segment>
<pinref part="Q1" gate="G$2" pin="3"/>
<pinref part="X3" gate="G$1" pin="2.1"/>
<wire x1="38.1" y1="-7.62" x2="38.1" y2="10.16" width="0.1524" layer="91"/>
<junction x="38.1" y="-7.62"/>
<junction x="38.1" y="10.16"/>
<label x="38.1" y="5.08" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="L3" class="0">
<segment>
<pinref part="Q1" gate="G$2" pin="5"/>
<wire x1="43.18" y1="-7.62" x2="43.18" y2="10.16" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="3.1"/>
<junction x="43.18" y="-7.62"/>
<junction x="43.18" y="10.16"/>
<label x="43.18" y="5.08" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="Q1" gate="G$2" pin="2"/>
<wire x1="33.02" y1="-17.78" x2="33.02" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-22.86" x2="33.02" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-27.94" x2="33.02" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-22.86" x2="27.94" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-22.86" x2="27.94" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-58.42" x2="78.74" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-58.42" x2="78.74" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="F1" gate="G$1" pin="1"/>
<junction x="33.02" y="-22.86"/>
<pinref part="FU1" gate="G$1" pin="1"/>
<junction x="33.02" y="-27.94"/>
<junction x="33.02" y="-17.78"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="Q1" gate="G$2" pin="4"/>
<pinref part="FU1" gate="G$1" pin="3"/>
<wire x1="38.1" y1="-17.78" x2="38.1" y2="-27.94" width="0.1524" layer="91"/>
<junction x="38.1" y="-27.94"/>
<junction x="38.1" y="-17.78"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="Q1" gate="G$2" pin="6"/>
<wire x1="43.18" y1="-17.78" x2="43.18" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="FU1" gate="G$1" pin="5"/>
<junction x="43.18" y="-27.94"/>
<wire x1="43.18" y1="-27.94" x2="43.18" y2="-30.48" width="0.1524" layer="91"/>
<junction x="43.18" y="-17.78"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="FU1" gate="G$1" pin="6"/>
<wire x1="43.18" y1="-38.1" x2="43.18" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="6.1"/>
<wire x1="43.18" y1="-43.18" x2="58.42" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-43.18" x2="58.42" y2="10.16" width="0.1524" layer="91"/>
<junction x="43.18" y="-38.1"/>
<junction x="58.42" y="10.16"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="FU1" gate="G$1" pin="4"/>
<wire x1="38.1" y1="-38.1" x2="38.1" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="7.1"/>
<wire x1="38.1" y1="-48.26" x2="63.5" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-48.26" x2="63.5" y2="10.16" width="0.1524" layer="91"/>
<junction x="38.1" y="-38.1"/>
<junction x="63.5" y="10.16"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="FU1" gate="G$1" pin="2"/>
<wire x1="33.02" y1="-38.1" x2="33.02" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="8.1"/>
<wire x1="33.02" y1="-53.34" x2="68.58" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-53.34" x2="68.58" y2="10.16" width="0.1524" layer="91"/>
<junction x="33.02" y="-38.1"/>
<junction x="68.58" y="10.16"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="M1" gate="G$1" pin="U1"/>
<pinref part="X3" gate="G$1" pin="8.2"/>
<wire x1="68.58" y1="38.1" x2="68.58" y2="25.4" width="0.1524" layer="91"/>
<junction x="68.58" y="25.4"/>
<junction x="68.58" y="38.1"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="M1" gate="G$1" pin="V1"/>
<pinref part="X3" gate="G$1" pin="7.2"/>
<wire x1="63.5" y1="38.1" x2="63.5" y2="25.4" width="0.1524" layer="91"/>
<junction x="63.5" y="25.4"/>
<junction x="63.5" y="38.1"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="M1" gate="G$1" pin="W1"/>
<pinref part="X3" gate="G$1" pin="6.2"/>
<wire x1="58.42" y1="38.1" x2="58.42" y2="25.4" width="0.1524" layer="91"/>
<junction x="58.42" y="25.4"/>
<junction x="58.42" y="38.1"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="10.1"/>
<pinref part="F1" gate="G$1" pin="2"/>
<wire x1="78.74" y1="10.16" x2="78.74" y2="0" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="13.1"/>
<wire x1="78.74" y1="0" x2="78.74" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="93.98" y1="10.16" x2="93.98" y2="0" width="0.1524" layer="91"/>
<wire x1="93.98" y1="0" x2="78.74" y2="0" width="0.1524" layer="91"/>
<junction x="78.74" y="0"/>
<pinref part="G2" gate="G$1" pin="L"/>
<wire x1="106.68" y1="-22.86" x2="101.6" y2="-22.86" width="0.1524" layer="91"/>
<junction x="78.74" y="-22.86"/>
<pinref part="G1" gate="G$1" pin="1"/>
<wire x1="101.6" y1="-22.86" x2="78.74" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="106.68" y1="-33.02" x2="101.6" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="101.6" y1="-33.02" x2="101.6" y2="-22.86" width="0.1524" layer="91"/>
<junction x="101.6" y="-22.86"/>
<junction x="106.68" y="-22.86"/>
<junction x="106.68" y="-33.02"/>
<junction x="78.74" y="10.16"/>
<junction x="93.98" y="10.16"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="15.1"/>
<wire x1="104.14" y1="10.16" x2="104.14" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="G2" gate="G$1" pin="PE"/>
<wire x1="104.14" y1="-12.7" x2="106.68" y2="-12.7" width="0.1524" layer="91"/>
<junction x="106.68" y="-12.7"/>
<junction x="104.14" y="10.16"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="G2" gate="G$1" pin="N"/>
<pinref part="X3" gate="G$1" pin="11.1"/>
<wire x1="106.68" y1="-17.78" x2="96.52" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="96.52" y1="-17.78" x2="83.82" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-17.78" x2="83.82" y2="10.16" width="0.1524" layer="91"/>
<pinref part="G1" gate="G$1" pin="2"/>
<wire x1="106.68" y1="-38.1" x2="96.52" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="96.52" y1="-38.1" x2="96.52" y2="-17.78" width="0.1524" layer="91"/>
<junction x="96.52" y="-17.78"/>
<junction x="106.68" y="-17.78"/>
<junction x="106.68" y="-38.1"/>
<junction x="83.82" y="10.16"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="G2" gate="G$1" pin="+24V"/>
<pinref part="X4" gate="G$1" pin="1.1"/>
<wire x1="137.16" y1="-22.86" x2="147.32" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="147.32" y1="-22.86" x2="147.32" y2="10.16" width="0.1524" layer="91"/>
<pinref part="Q1.1" gate="G$1" pin="14"/>
<wire x1="147.32" y1="-22.86" x2="170.18" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-22.86" x2="180.34" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="180.34" y1="-22.86" x2="180.34" y2="-27.94" width="0.1524" layer="91"/>
<junction x="147.32" y="-22.86"/>
<junction x="147.32" y="10.16"/>
<junction x="137.16" y="-22.86"/>
<junction x="180.34" y="-27.94"/>
<wire x1="170.18" y1="-22.86" x2="170.18" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="Q1.1" gate="G$1" pin="A1"/>
<wire x1="170.18" y1="-58.42" x2="185.42" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-58.42" x2="185.42" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="Q1.2" gate="G$1" pin="A1"/>
<wire x1="185.42" y1="-58.42" x2="198.12" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="198.12" y1="-58.42" x2="198.12" y2="-53.34" width="0.1524" layer="91"/>
<junction x="185.42" y="-58.42"/>
<junction x="170.18" y="-22.86"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="G1" gate="G$1" pin="3"/>
<pinref part="X4" gate="G$1" pin="3.1"/>
<wire x1="127" y1="-33.02" x2="157.48" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-33.02" x2="157.48" y2="-10.16" width="0.1524" layer="91"/>
<junction x="157.48" y="10.16"/>
<junction x="127" y="-33.02"/>
<pinref part="Q1.3" gate="G$1" pin="14"/>
<wire x1="157.48" y1="-10.16" x2="157.48" y2="10.16" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-10.16" x2="210.82" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="210.82" y1="-10.16" x2="210.82" y2="-27.94" width="0.1524" layer="91"/>
<junction x="157.48" y="-10.16"/>
<junction x="210.82" y="-27.94"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="G1" gate="G$1" pin="4"/>
<wire x1="127" y1="-38.1" x2="162.56" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-38.1" x2="162.56" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="4.1"/>
<junction x="162.56" y="10.16"/>
<wire x1="162.56" y1="-7.62" x2="162.56" y2="10.16" width="0.1524" layer="91"/>
<wire x1="162.56" y1="10.16" x2="162.56" y2="12.7" width="0.1524" layer="91"/>
<junction x="127" y="-38.1"/>
<pinref part="Q1.4" gate="G$1" pin="14"/>
<wire x1="162.56" y1="-7.62" x2="220.98" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-7.62" x2="220.98" y2="-27.94" width="0.1524" layer="91"/>
<junction x="162.56" y="-7.62"/>
<junction x="220.98" y="-27.94"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="F3" gate="G$1" pin="1"/>
<wire x1="170.18" y1="5.08" x2="170.18" y2="7.62" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="5.1"/>
<wire x1="170.18" y1="7.62" x2="167.64" y2="7.62" width="0.1524" layer="91"/>
<wire x1="167.64" y1="7.62" x2="167.64" y2="10.16" width="0.1524" layer="91"/>
<junction x="167.64" y="10.16"/>
<junction x="170.18" y="5.08"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="6.1"/>
<wire x1="172.72" y1="10.16" x2="172.72" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="Q1.2" gate="G$1" pin="12"/>
<wire x1="172.72" y1="-15.24" x2="198.12" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="198.12" y1="-15.24" x2="198.12" y2="-27.94" width="0.1524" layer="91"/>
<junction x="172.72" y="10.16"/>
<junction x="198.12" y="-27.94"/>
<pinref part="Q1.4" gate="G$1" pin="12"/>
<wire x1="198.12" y1="-15.24" x2="226.06" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-15.24" x2="226.06" y2="-27.94" width="0.1524" layer="91"/>
<junction x="198.12" y="-15.24"/>
<junction x="226.06" y="-27.94"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="F3" gate="G$1" pin="2"/>
<wire x1="170.18" y1="-5.08" x2="170.18" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="Q1.1" gate="G$1" pin="12"/>
<wire x1="170.18" y1="-20.32" x2="185.42" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-20.32" x2="185.42" y2="-27.94" width="0.1524" layer="91"/>
<junction x="185.42" y="-27.94"/>
<junction x="170.18" y="-5.08"/>
<pinref part="Q1.3" gate="G$1" pin="12"/>
<wire x1="185.42" y1="-20.32" x2="215.9" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="215.9" y1="-20.32" x2="215.9" y2="-27.94" width="0.1524" layer="91"/>
<junction x="185.42" y="-20.32"/>
<junction x="215.9" y="-27.94"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="5.2"/>
<pinref part="M1" gate="G$1" pin="PE"/>
<wire x1="53.34" y1="25.4" x2="53.34" y2="38.1" width="0.1524" layer="91"/>
<junction x="53.34" y="25.4"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="Q1.2" gate="G$1" pin="A2"/>
<wire x1="193.04" y1="-53.34" x2="193.04" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-55.88" x2="180.34" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="Q1.1" gate="G$1" pin="A2"/>
<wire x1="180.34" y1="-55.88" x2="180.34" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="G2" gate="G$1" pin="0V"/>
<pinref part="X4" gate="G$1" pin="2.1"/>
<wire x1="137.16" y1="-12.7" x2="152.4" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="152.4" y1="-12.7" x2="152.4" y2="10.16" width="0.1524" layer="91"/>
<wire x1="152.4" y1="-12.7" x2="152.4" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="Q1.2" gate="G$1" pin="14"/>
<wire x1="152.4" y1="-17.78" x2="172.72" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="172.72" y1="-17.78" x2="193.04" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-17.78" x2="193.04" y2="-27.94" width="0.1524" layer="91"/>
<junction x="152.4" y="-12.7"/>
<junction x="152.4" y="10.16"/>
<junction x="137.16" y="-12.7"/>
<junction x="193.04" y="-27.94"/>
<wire x1="180.34" y1="-55.88" x2="172.72" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="172.72" y1="-55.88" x2="172.72" y2="-17.78" width="0.1524" layer="91"/>
<junction x="172.72" y="-17.78"/>
<junction x="180.34" y="-55.88"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
