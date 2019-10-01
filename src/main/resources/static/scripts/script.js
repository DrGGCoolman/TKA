$(".jumbotron-sport").mouseover(function () {
    $('#jumbo-sport').removeClass('col-lg-3');
    $('#jumbo-sport').addClass('col-lg-12')
    $('#jumbo-sportplus').hide();
    $('#jumbo-suv').hide();
    $('#jumbo-luxus').hide();
    $("#sport").show();
    $("#text-sport").show();
});
$(".jumbotron-sport").mouseout(function () {
    $('#jumbo-sport').addClass('col-lg-3');
    $('#jumbo-sport').removeClass('col-lg-12');
    $('#jumbo-sportplus').show();
    $('#jumbo-suv').show();
    $('#jumbo-luxus').show();
    $("#sport").hide();
    $("#text-sport").hide();
});

$(".jumbotron-sportplus").mouseover(function () {
    $('#jumbo-sportplus').removeClass('col-lg-3');
    $('#jumbo-sportplus').addClass('col-lg-12');
    $('#jumbo-sport').hide();
    $('#jumbo-suv').hide();
    $('#jumbo-luxus').hide();
    $("#text-sportplus").show();
});
$(".jumbotron-sportplus").mouseout(function () {
    $('#jumbo-sportplus').addClass('col-lg-3');
    $('#jumbo-sportplus').removeClass('col-lg-12');
    $('#jumbo-sport').show();
    $('#jumbo-suv').show();
    $('#jumbo-luxus').show();
    $("#text-sportplus").hide();
});

$(".jumbotron-suv").mouseover(function () {
    $('#jumbo-suv').removeClass('col-lg-3');
    $('#jumbo-suv').addClass('col-lg-12');
    $('#jumbo-sport').hide();
    $('#jumbo-sportplus').hide();
    $('#jumbo-luxus').hide();
    $("#text-suv").show();
});
$(".jumbotron-suv").mouseout(function () {
    $('#jumbo-suv').addClass('col-lg-3');
    $('#jumbo-suv').removeClass('col-lg-12');
    $('#jumbo-sport').show();
    $('#jumbo-sportplus').show();
    $('#jumbo-luxus').show();
    $("#text-suv").hide();
});

$(".jumbotron-luxus").mouseover(function () {
    $('#jumbo-luxus').removeClass('col-lg-3');
    $('#jumbo-luxus').addClass('col-lg-12');
    $('#jumbo-suv').hide();
    $('#jumbo-sport').hide();
    $('#jumbo-sportplus').hide();
    $("#text-luxus").show();
});
$(".jumbotron-luxus").mouseout(function () {
    $('#jumbo-luxus').addClass('col-lg-3');
    $('#jumbo-luxus').removeClass('col-lg-12');
    $('#jumbo-suv').show();
    $('#jumbo-sport').show();
    $('#jumbo-sportplus').show();
    $("#text-luxus").hide();
});


//Pricebutton-Funktion
                    function price_function(e, id) {
                        var x = document.getElementById("200km".concat(id));
                        var y = document.getElementById("500km".concat(id));
                        var z = document.getElementById("1000km".concat(id));
                        var x1 = document.getElementById("200button".concat(id));
                        var y1 = document.getElementById("500button".concat(id));
                        var z1 = document.getElementById("1000button".concat(id));
                        if (e.id === "200button".concat(id)) {
                            x.style.display = "block";
                            y.style.display = "none";
                            z.style.display = "none";
                            x1.style.backgroundColor = "white";
                            y1.style.backgroundColor = "rgb(255, 255, 255, 0.75)";
                            z1.style.backgroundColor = "rgb(255, 255, 255, 0.75)";
                        } else if (e.id === "500button".concat(id)) {
                            x.style.display = "none";
                            y.style.display = "block";
                            z.style.display = "none";
                            x1.style.backgroundColor = "rgb(255, 255, 255, 0.75)";
                            y1.style.backgroundColor = "white";
                            z1.style.backgroundColor = "rgb(255, 255, 255, 0.75)";
                        } else if (e.id === "1000button".concat(id)) {
                            x.style.display = "none";
                            y.style.display = "none";
                            z.style.display = "block";
                            x1.style.backgroundColor = "rgb(255, 255, 255, 0.75)";
                            y1.style.backgroundColor = "rgb(255, 255, 255, 0.75)";
                            z1.style.backgroundColor = "white";
                        }
                    };


//Kalender-Funktion
                                            // Datum auf Gültigkeit checken
                                            function isValidDate(y, m, d) {
                                                //--Gibt Datum des letzten Tag des Monats aus--
                                                var thisDate = new Date(y, m, 1);
                                                //einen Tag weiter schalten
                                                thisDate.setMonth(thisDate.getMonth() + 1);
                                                //vom ersten Tag des n
                                                thisDate.setTime(thisDate.getTime() - 12 * 3600 * 1000);

                                                if (d > thisDate.getDate()) { return false; }
                                                else { return true; }
                                            }
                                            
                                            //Letzten Tag des Monats
                                            function getLastDayOfMonth() {
                                                var d = getDateFromMemory();
                                                //einen Tag weiter schalten
                                                d.setMonth(d.getMonth() + 1);
                                                //den ersten des Monats setzen
                                                d.setDate(1);
                                                //vom ersten Tag des nächsten Monats ein Tag abziehen
                                                d.setTime(d.getTime() - 12 * 3600 * 1000);
                                                return d.getDate();
                                            }

                                            // Speichert das Datum im Zwischenspeicher
                                            function setDateToMemory(d) {
                                                document.all.date_memory.innerHTML = d.getFullYear() + ',' + (d.getMonth() + 1) + ',' + d.getDate();
                                            }
  
                                            // Gibt das Datum aus dem Speicher wieder
                                            function getDateFromMemory() {
                                                var s = document.all.date_memory.innerHTML;
                                                var z = s.split(',');
                                                return new Date(z[0], z[1] - 1, z[2]);
                                            }
                                         
                                            // nächster Monat
                                            function nextMonth() {
                                                var d = getDateFromMemory();
                                                var m = d.getMonth() + 1;
                                                var y = d.getFullYear();
                                                //Bei Jahreswechsel
                                                if ((m + 1) > 12) {
                                                    m = 0;
                                                    y = y + 1;
                                                }
                                                d = new Date(y, m, 01);
                                                setDateToMemory(d);
                                                loadcalendar();
                                            }
                                            
                                            // vorheriger Monat
                                            function prevMonth() {
                                                var d = getDateFromMemory();
                                                var m = d.getMonth() + 1;
                                                var y = d.getFullYear();

                                                //Bei Jahreswechsel
                                                if ((m - 1) < 1) {
                                                    m = 11;
                                                    y = y - 1;
                                                }
                                                else {
                                                    m = m - 2;
                                                }
                                                d = new Date(y, m, 01);
                                                setDateToMemory(d);

                                                loadcalendar();
                                            }
                                            
                                            // Erster Aufruf des Kalenders
                                            function iniCalendar() {
                                                //heutiges Datum setzen
                                                var d = new Date();
                                                //aktuelles Datum speichern
                                                setDateToMemory(d);
                                                //Lädt den Kalender
                                                loadcalendar();
                                            }
                                            
                                            // Lädt die Tabelle
                                            
                                            function loadcalendar() {
                                                //aktuelles Datum holen (1. des Monats)
                                                var d = getDateFromMemory();
                                                //Monat ermitteln aus this_date
                                                var m = d.getMonth();
                                                //Jahr ermitteln aus this_date (YYYY)
                                                var y = d.getFullYear();
                                                //Monat & Jahr eintragen
                                                document.all.calendar_month.innerHTML = getMonthname(m + 1) + ' ' + y;
                                                //ersten Tag des Monats festlegen
                                                var firstD = d;
                                                firstD.setDate(1);
                                                //Wochentag ermitteln vom 1. des übergebenen Monats 
                                                var dateDay = firstD.getDay(); 
                                                dateDay = (dateDay == 0) ? 7 : dateDay;
                                                //Speicher für aktuelle Zelle
                                                var entry = '';
                                                //Speicher für aktuellen Tag
                                                var zahl = '';
                                                //heutiges Datum ermitteln
                                                var hD = new Date();
                                                var bEvent = false;

                                                //Kalenderspalten zählen
                                                for (var i = 1; i <= 42; i++) {
                                                    bEvent = false;
                                                    entry = document.getElementById('calendar_entry_' + i);
                                                    //Tageszahlenbestimmung
                                                    zahl = (i + 1) - dateDay;
                                                    //Datum zusammenfügen
                                                    var dx = new Date(y, m, zahl);

                                                    //Erstellen der Kalenderkreise ab dem ersten gültigen Tag im Monat
                                                    if (i >= dateDay && isValidDate(y, m, zahl)) {
                                                        entry.innerHTML = '<div class=calendar_link href=javascript:putDate(' + zahl + ')>' + zahl + '</div>';
                                                        entry.hidden = false;
                                                        entry.style.visibility = 'visible';
                                                        entry.style.backgroundColor = 'rgb(69, 121, 69, 0.8)';
                                                        entry.style.fontWeight = 'normal';
                                                        //Wenn an dem Tag das Auto nicht verfügbar ist
                                                        if (noneAvailable(m, zahl)) {
                                                            entry.style.color = "grey";
                                                            entry.style.backgroundColor = 'rgb(95, 35, 43, 0.8)';
                                                            entry.style.textDecoration = 'line-through';
                                                        }
                                                        else {
                                                            if (!bEvent)
                                                                entry.style.color = 'white'
                                                            entry.style.textDecoration = 'none';
                                                        }
                                                        //heutiges Datum dick markieren			
                                                        if (hD.getDate() == dx.getDate() &&
                                                            hD.getMonth() == dx.getMonth() &&
                                                            hD.getYear() == dx.getYear()) {
                                                            entry.style.fontWeight = 'bold';
                                                        }
                                                    }
                                                    else {
                                                        entry.innerHTML = '';
                                                        entry.style.backgroundColor = 'rgb(81, 82, 102, 0)';
                                                        if (i >= dateDay) {
                                                            entry.hidden = true;
                                                            entry.style.border = '0px';
                                                        }
                                                        else {
                                                            entry.style.border = '0px';
                                                        }
                                                    }
                                                }
                                            }

                                            // Ist an dem folgenden Datum das Auto verfügbar ?
                                            function noneAvailable(m, d) {
                                                m++;
                                                // Festlegung der Daten, an denen das Auto nicht verfügbar ist
                                                var h = new Array(47);
                                                h[0] = "1.1";
                                                h[1] = "6.1";
                                                h[2] = "23.1";
                                                h[3] = "29.1";
                                                h[4] = "2.2";
                                                h[5] = "7.2";
                                                h[6] = "12.2";
                                                h[7] = "1.3";
                                                h[8] = "2.3";
                                                h[9] = "3.3";
                                                h[10] = "4.3";
                                                h[11] = "12.4";
                                                h[12] = "13.4";
                                                h[13] = "20.4";
                                                h[14] = "31.4";
                                                h[15] = "1.5";
                                                h[16] = "2.5";
                                                h[17] = "3.5";
                                                h[18] = "4.5";
                                                h[19] = "12.5";
                                                h[20] = "21.5";
                                                h[21] = "1.6";
                                                h[22] = "7.6";
                                                h[23] = "12.6";
                                                h[24] = "1.7";
                                                h[25] = "12.7";
                                                h[26] = "13.7";
                                                h[27] = "21.7";
                                                h[28] = "23.7";
                                                h[29] = "17.8";
                                                h[30] = "18.8";
                                                h[31] = "22.8";
                                                h[32] = "1.9";
                                                h[33] = "2.9";
                                                h[34] = "28.9";
                                                h[35] = "29.9";
                                                h[36] = "30.9";
                                                h[37] = "11.11";
                                                h[38] = "24.12";
                                                h[39] = "25.12";
                                                h[40] = "26.12";
                                                h[41] = "27.12";
                                                h[42] = "28.12";
                                                h[43] = "29.12";
                                                h[44] = "30.12";
                                                h[45] = "31.12";
                                                h[46] = "10.12";
                                                h[47] = "11.12";
                                                h[48] = "24.10";
                                                h[49] = "25.10";
                                                h[50] = "26.10";
                                                h[51] = "27.10";
                                                h[52] = "28.10";
                                                h[53] = "29.10";
                                                h[54] = "30.10";
                                                h[55] = "31.10";
                                                h[56] = "10.10";
                                                h[57] = "11.10";

                                                var iD;
                                                //Alle Daten werden getestet
                                                for (var i = 0; i < h.length; i++) {
                                                    iH = h[i].split(".");

                                                    if (iH[0] == d && iH[1] == m) {
                                                        return true;
                                                    }
                                                }
                                                //Wenn kein Feiertag gefunden wird
                                                return false;

                                            }
                                            
                                            // Regelt welche Rückgabe erfolgt.
                                            var returnModus = 0;

                                            // Setzt die Art der Rückgabe fest
                                            function setReturnModus(returnIndex) { returnModus = returnIndex; }
                                            
                                            // Gibt den Monatsnamen anhand der Monatsnummer zurück
                                            function getMonthname(monthnumber) {
                                                switch (monthnumber) {
                                                    case 1:
                                                        return 'Januar';
                                                        break;
                                                    case 2:
                                                        return 'Februar';
                                                        break;
                                                    case 3:
                                                        return 'März';
                                                        break;
                                                    case 4:
                                                        return 'April';
                                                        break;
                                                    case 5:
                                                        return 'Mai';
                                                        break;
                                                    case 6:
                                                        return 'Juni';
                                                        break;
                                                    case 7:
                                                        return 'Juli';
                                                        break;
                                                    case 8:
                                                        return 'August';
                                                        break;
                                                    case 9:
                                                        return 'September';
                                                        break;
                                                    case 10:
                                                        return 'Oktober';
                                                        break;
                                                    case 11:
                                                        return 'November';
                                                        break;
                                                    case 12:
                                                        return 'Dezember';
                                                        break;
                                                    default:
                                                        return '---';
                                                }
                                            };