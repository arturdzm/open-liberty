/*
* IBM Confidential
*
* OCO Source Materials
*
* WLP Copyright IBM Corp. 2017
*
* The source code for this program is not published or otherwise divested
* of its trade secrets, irrespective of what has been deposited with the
* U.S. Copyright Office.
*/
package com.ibm.ws.microprofile.openapi.impl.test.utils;

import com.ibm.ws.microprofile.openapi.impl.model.OpenAPIImpl;
import com.ibm.ws.microprofile.openapi.utils.OpenAPIModelWalker.Context;

public class TestValidationContextHelper implements Context {

    private final OpenAPIImpl openAPI;

    public TestValidationContextHelper(OpenAPIImpl openAPI) {
        this.openAPI = openAPI;
    }

    /*
     * (non-Javadoc)
     *
     * @see com.ibm.ws.openapi.internal.utils.OpenAPIModelWalker.Context#getModel()
     */
    @Override
    public OpenAPIImpl getModel() {
        return openAPI;
    }

    /*
     * (non-Javadoc)
     *
     * @see com.ibm.ws.openapi.internal.utils.OpenAPIModelWalker.Context#getParent()
     */
    @Override
    public Object getParent() {
        // TODO Auto-generated method stub
        return null;
    }
}
