# Lab Report Four

## Three Interesting Ways Of Using Grep

Do you want to find out interesting ways that the `grep` command can be used with different tags? If so, keep reading to learn more!

### Number One: The `grep -c` Option

```
$ grep -c "men" 911report/*.txt  
911report/chapter-1.txt:55
911report/chapter-10.txt:48
911report/chapter-11.txt:116
911report/chapter-12.txt:282
911report/chapter-13.1.txt:181
911report/chapter-13.2.txt:85
911report/chapter-13.3.txt:158
911report/chapter-13.4.txt:242
911report/chapter-13.5.txt:252
911report/chapter-2.txt:94
911report/chapter-3.txt:382
911report/chapter-5.txt:110
911report/chapter-6.txt:183
911report/chapter-7.txt:105
911report/chapter-8.txt:69
911report/chapter-9.txt:109
911report/preface.txt:16
```
##### When used with the `-c` option, the `grep` command returns the total count of lines within the specified file that contain the string given in the parameters. This can be useful for quickly finding the frequency a word or phrase appears in any given file for any statistic related purpose. In this case, the command is returning the total count of lines that contain the word **men** for all text files within the *911report* directory. This is useful if the user wanted to know how many times the word **men** was spoken in the transcripts of the 911 reports.
<br/>

```
$ grep -c "life" biomed/rr*.txt
biomed/rr166.txt:9
biomed/rr167.txt:0
biomed/rr171.txt:1
biomed/rr172.txt:0
biomed/rr191.txt:0
biomed/rr196.txt:0
biomed/rr37.txt:1
biomed/rr73.txt:0
biomed/rr74.txt:1
```

##### In this case, the command is returning the total count of lines that contain the word **life** for all text files that start with the letters *rr* within the *biomed* directory. This is useful if the user wanted to know how many times the word **life** appears in *biomed* files (not a lot of times surprisingly).
<br/>

```
$ grep -c "water" government/Env_Prot_Agen/*.txt
government/Env_Prot_Agen/1-3_meth_901.txt:12
government/Env_Prot_Agen/atx1-6.txt:131
government/Env_Prot_Agen/bill.txt:7
government/Env_Prot_Agen/ctf1-6.txt:100
government/Env_Prot_Agen/ctf7-10.txt:112
government/Env_Prot_Agen/ctm4-10.txt:219
government/Env_Prot_Agen/final.txt:14
government/Env_Prot_Agen/jeffordslieberm.txt:0
government/Env_Prot_Agen/multi102902.txt:32
government/Env_Prot_Agen/nov1.txt:3
government/Env_Prot_Agen/ro_clear_skies_book.txt:1
government/Env_Prot_Agen/section-by-section_summary.txt:0
government/Env_Prot_Agen/tech_adden.txt:5
government/Env_Prot_Agen/tech_sectiong.txt:8
```

##### In this case, the command is returning the total count of lines that contain the word **water** for all text files within the *government/Env_Prot_Agen* directory. This is useful if the user wanted to know how many times the word **water** appears in *Environmental Protection Agency* files (a wide variation based on the file).
<br/>

---

### Number Two: The `grep -R` Option

```
$ grep -R "apple"
911report/chapter-8.txt:                grappled with reports alleging plots in Yemen and Italy, as well as a report about a
biomed/1468-6708-3-10.txt:        questions requiring large sample sizes and to grapple with
biomed/1471-2105-3-12.txt:            This problem appears to lie in the JAVA applet included
biomed/1471-2105-3-12.txt:            applet-generated graph may be problematic due to an
biomed/1471-2105-3-12.txt:            applet incompatibility; capturing the graph as a
biomed/1471-2202-2-5.txt:            computer http://www.apple.com. If the criteria for
biomed/1471-2458-3-11.txt:        fresh-pressed apple cider [ 28 ] . Other foodborne
biomed/1472-6882-1-10.txt:          antibiotics and the ananase enzyme (from the pineapple
biomed/gb-2002-3-10-research0053.txt:          in pineapple (~70% to
biomed/gb-2002-3-12-research0077.txt:          the JAVA applet WebMol [ 35]. In this setting, the color
biomed/gb-2003-4-8-r51.txt:            visualized using QuickPDB, a Java applet developed by
government/About_LSC/commission_report.txt:apples (4,428), vegetable harvesting (4,822), and fruit harvesting
government/About_LSC/commission_report.txt:the October apple harvest, and then return to Mexico until the work
government/About_LSC/commission_report.txt:apple harvest. See April Comments at 101 (comment of Garry G.
government/Gen_Account_Office/Oct15-2001_d0224.txt:incidents has proven to be challenging as organizations grapple
government/Gen_Account_Office/Testimony_cg00010t.txt:Clearly, much has already changed as GAO has grappled with this
government/Gen_Account_Office/Testimony_cg00010t.txt:grapples with increasingly complex and contentious issues requiring
government/Media/Law_Schools.txt:government post. Here is how to grapple "in the service of
plos/pmed.0010013.txt:        easier to grapple with a difficult, but ultimately soluble, basic science question than to
```

```
$ grep -R "cheese"
biomed/1471-2180-3-15.txt:        cheeses prepared from unpasteurized milk. Children in these
biomed/1471-2210-1-10.txt:        food (powdered milk, cheese, egg products) during storage [
plos/journal.pbio.0020146.txt:        procedures, such as those for producing cheeses and wines, all of which produced foodstuffs
plos/journal.pbio.0020306.txt:        division. ‘The shell is rather like a Camembert cheese box or a petri dish’, explains
```

```
$ grep -R "penny"
911report/chapter-13.3.txt:                mujahideen were financed (even "one penny") or trained by the United States. See
plos/journal.pbio.0020150.txt:        concerned, “a penny for your thoughts” is currently more like “a million pennies for a
```

---

### Number Three: The `grep -i` Option

```
$ grep -i "Democrat" government/*/*.txt
government/About_LSC/Strategic_report.txt:essential to a democratic way of life, and so very important to all
government/Gen_Account_Office/July11-2001_gg00172r.txt:Democratic Member, Subcommittee on Economic Development, Public
government/Gen_Account_Office/Testimony_d01609t.txt:multiethnic, democratic societies. Our work also has shown that
government/Media/Attorney_gives_his_time.txt:Tallahassee Democrat
government/Media/Barnes_pro_bono.txt:Dent, who served as spokesman for Democratic Gov. Zell Miller in
government/Media/Barr_sharpening_ax.txt:A House Democratic staffer close to the case said that GAO
government/Media/Bridging_legal_aid_gap.txt:or triples that of California. And democratic governments
government/Media/Good_guys_reward.txt:and the Democratic Party.
government/Media/Politician_Practices.txt:governor. Democrat Roy Barnes was upset in November by Sonny
government/Media/Terrorist_Attack.txt:inaugurated by President Clinton and some other Democrats. But even
government/Media/Too_Crucial_to_Take_Cut.txt:cut from legal services. It is our duty as a democratic society -
government/Media/Weak_economy.txt:Busch, an Anne Arundel County Democrat.
government/Media/Weak_economy.txt:Mike Miller, a Prince George's County Democrat. "I do believe the
government/Media/predatory_loans.txt:Linkhart, a Denver Democrat, introduced the bill at the behest
```

```
$ grep -i "crisis" plos/*.txt
plos/journal.pbio.0020052.txt:        The AIDS crisis has brought to public notice what has always been generally true—that
plos/journal.pbio.0020430.txt:        BMI? In the movie, Octavius's crisis is a severe unbalance in favor of machine control.
plos/journal.pbio.0030127.txt:        life span of krill, the species will face a reproductive crisis. And that, he said, “will
plos/pmed.0010010.txt:        The Crisis of Human Resources
plos/pmed.0010039.txt:        diseases, such as diabetes (Figure 1) [5]. And if you have a serious health crisis while
plos/pmed.0020075.txt:        CML that has progressed to blast crisis [2].
```

```
$ grep -i "peace" 911report/*.txt
911report/chapter-11.txt:                satisfaction. The people of the United States hoped to enjoy a peace dividend, as
911report/chapter-11.txt:                was coming, especially after peace talks stalemated at the end of November 1941.
911report/chapter-12.txt:                    made significant progress in peacefully discussing their longstanding
911report/chapter-12.txt:                peacekeeping force (the International Security Assistance Force, or ISAF). More than
911report/chapter-12.txt:                strategies to promote the Middle East peace process. In each country, political
911report/chapter-12.txt:                exchange of ideas across cultures, and the peaceful resolution of differences
911report/chapter-13.3.txt:                Foreign Minister on Developments re Terrorism and Peace," May 21, 1996. On the
911report/chapter-13.3.txt:            87. See Dana Priest, The Mission: Waging War and Keeping Peace with America's
911report/chapter-13.5.txt:            12. United States Institute of Peace report, "Establishing the Rule of Law in
911report/chapter-13.5.txt:                against drug warehouses and heroin laboratories." United States Institute of Peace
911report/chapter-2.txt:                for peaceful opposition, forcing their critics to choose silence, exile, or violent
911report/chapter-2.txt:            Bin Ladin's Historical Opportunity Most Muslims prefer a peaceful and inclusive
911report/chapter-3.txt:                hijacking persisted, the more likely it was to end peacefully. The strategy operated
911report/chapter-3.txt:            The Clandestine Service felt the impact of the post-Cold War peace dividend, with
911report/chapter-3.txt:                the Middle East peace process, missile defense, and globalization. Terrorism
911report/chapter-3.txt:                Already maintaining a NATO-led peacekeeping force in Bosnia, U.S. officials were
911report/chapter-6.txt:                concentrating on a lastminute push for a peace agreement between the Palestinians
911report/chapter-6.txt:                emphasized other issues such as North Korea and the Israeli- Palestinian peace
911report/chapter-6.txt:                with the faltering Middle East peace process and North Korea. Clarke said that the
911report/chapter-6.txt:                priorities included China, missile defense, the collapse of the Middle East peace
911report/chapter-6.txt:                peace process, Russia, and the Persian Gulf ).174 But Rice and Hadley began to
911report/chapter-6.txt:                They included the collapse of the Middle East peace process and, in April, a crisis
```