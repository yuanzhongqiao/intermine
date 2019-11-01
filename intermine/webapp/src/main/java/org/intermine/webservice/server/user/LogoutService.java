package org.intermine.webservice.server.user;

/*
 * Copyright (C) 2002-2019 FlyMine
 *
 * This code may be freely distributed and modified under the
 * terms of the GNU Lesser General Public Licence.  This should
 * be distributed with the code.  See the LICENSE file for more
 * information or http://www.gnu.org/copyleft/lesser.html.
 *
 */

import org.apache.log4j.Logger;
import org.intermine.api.InterMineAPI;
import org.intermine.api.profile.*;
import org.intermine.webservice.server.core.JSONService;

/**
 * Logout service which invalidates the token assigned to the user logging out
 * It requires token authentication
 * @author Daniela Butano
 *
 */
public class LogoutService extends JSONService
{
    /**
     * Constructor
     * @param im A reference to the InterMine API settings bundle
     */
    public LogoutService(InterMineAPI im) {
        super(im);
    }

    @Override
    protected void execute() throws Exception {
        Profile profile = getPermission().getProfile();
        ProfileManager pm = im.getProfileManager();
        pm.removeTokensForProfile(profile);
    }
}
