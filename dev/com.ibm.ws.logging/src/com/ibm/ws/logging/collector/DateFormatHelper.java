/*******************************************************************************
 * Copyright (c) 2017 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package com.ibm.ws.logging.collector;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 *
 */
public class DateFormatHelper {

    /** Thread specific date format objects */
    private static ThreadLocal<BurstDateFormat[]> dateformats = new ThreadLocal<BurstDateFormat[]>();

    /**
     * A format string that will produce a reasonable standard way for
     * formatting time (but still using the current locale)
     */
    private static final String localeDatePattern;

    static {
        String pattern;
        int patternLength;
        int endOfSecsIndex;
        // Retrieve a standard Java DateFormat object with desired format.
        DateFormat formatter = DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.MEDIUM);
        if (formatter instanceof SimpleDateFormat) {
            // Retrieve the pattern from the formatter, since we will need to
            // modify it.
            SimpleDateFormat sdFormatter = (SimpleDateFormat) formatter;
            pattern = sdFormatter.toPattern();
            // Append milliseconds and timezone after seconds
            patternLength = pattern.length();
            endOfSecsIndex = pattern.lastIndexOf('s') + 1;
            String newPattern = pattern.substring(0, endOfSecsIndex) + ":SSS z";
            if (endOfSecsIndex < patternLength)
                newPattern += pattern.substring(endOfSecsIndex, patternLength);
            // 0-23 hour clock (get rid of any other clock formats and am/pm)
            newPattern = newPattern.replace('h', 'H');
            newPattern = newPattern.replace('K', 'H');
            newPattern = newPattern.replace('k', 'H');
            newPattern = newPattern.replace('a', ' ');
            newPattern = newPattern.trim();
            localeDatePattern = newPattern;
        } else {
            localeDatePattern = "dd/MMM/yyyy HH:mm:ss:SSS z";
        }
    }

    /**
     * Return the given time formatted, based on the provided format structure
     *
     * @param timestamp
     *            A timestamp as a long, e.g. what would be returned from
     *            <code>System.currentTimeMillis()</code>
     *
     * @param useIsoDateFormat
     *            A boolean, if true, the given date and time will be formatted in ISO-8601,
     *            e.g. yyyy-MM-dd'T'HH:mm:ss.SSSZ
     *            if false, the date and time will be formatted as the current locale,
     *
     * @return formated date string
     */
    public static final String formatTime(long timestamp, boolean useIsoDateFormat) {
        BurstDateFormat[] dfs = dateformats.get();
        if (dfs == null) {
            dfs = new BurstDateFormat[useIsoDateFormat ? 2 : 1];
            dateformats.set(dfs);
        } else if (useIsoDateFormat && dfs.length == 1) {
            BurstDateFormat[] newDfs = new BurstDateFormat[2];
            newDfs[0] = dfs[0];
            dfs = newDfs;
            dateformats.set(dfs);
        }

        int index = useIsoDateFormat ? 1 : 0;
        BurstDateFormat df = dfs[index];
        if (df == null) {
            df = dfs[index] = new BurstDateFormat(new SimpleDateFormat(useIsoDateFormat ? "yyyy-MM-dd'T'HH:mm:ss.SSSZ" : localeDatePattern));
        }

        return df.format(timestamp);
    }
}
