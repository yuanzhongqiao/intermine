package org.intermine.web.struts;

/*
 * Copyright (C) 2002-2019 FlyMine
 *
 * This code may be freely distributed and modified under the
 * terms of the GNU Lesser General Public Licence.  This should
 * be distributed with the code.  See the LICENSE file for more
 * information or http://www.gnu.org/copyleft/lesser.html.
 *
 */

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 * Action handles search.
 *
 * @author Kim Rutherford
 */
public class GotoWebSearchableAction extends InterMineAction
{
    /**
     * Method called when user has submitted search form.
     *
     * @param mapping The ActionMapping used to select this instance
     * @param form The optional ActionForm bean for this request (if any)
     * @param request The HTTP request we are processing
     * @param response The HTTP response we are creating
     * @return an ActionForward object defining where control goes next
     * @exception Exception if the application business logic throws
     *  an exception
     */
    @Override
    public ActionForward execute(ActionMapping mapping,
                                 ActionForm form,
                                 HttpServletRequest request,
                                 HttpServletResponse response)
        throws Exception {
        String type = request.getParameter("type");
        String scope = request.getParameter("scope");
        String name = request.getParameter("name");
        String highlightId = request.getParameter("highlightId");
        String gotoHighlighted = request.getParameter("gotoHighlighted");

        ForwardParameters forwardParameters = new ForwardParameters(mapping.findForward(type));
        forwardParameters.addParameter("name", name).addParameter("scope", scope);
        if (highlightId != null) {
            forwardParameters.addParameter("highlightId", highlightId);
        }
        if (gotoHighlighted != null) {
            forwardParameters.addParameter("gotoHighlighted", gotoHighlighted);
        }
        return forwardParameters.forward();
    }
}