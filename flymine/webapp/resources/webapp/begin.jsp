<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="im"%>

<!-- begin.jsp -->
<html:xhtml/>

<div class="body">



     <im:boxarea title="Search" stylename="plainbox" floatValue="left" fixedWidth="275px" height="150px">
     <br/>
        <form action="<c:url value="/keywordSearchResults.do" />" name="search" method="get">
            <input type="text" id="keywordSearch" name="searchTerm" value="" style="width: 200px;" />
            <input type="submit" name="searchSubmit" value="Search" />
        </form>
<br/>
      <em><p>Search FlyMine. Enter <strong>identifiers</strong>, <strong>names</strong> or <strong>keywords</strong> for
                genes, pathways, authors, ontology terms, etc.  (e.g. <i>eve</i>, <i>embryo</i>,
                <i>zen</i>, <i>allele</i>)
     </p></em>

    </im:boxarea>

     <im:boxarea title="Java/Perl API" floatValue="left" stylename="plainbox" fixedWidth="275px" height="150px">
We support programatic access to our data through Application Programming Interface too! Choose from options below:
<ul>
<li>Java
<li>Perl
</ul>
    </im:boxarea>

     <im:boxarea title="Analyse" floatValue="left" stylename="plainbox" fixedWidth="275px" height="150px">
     <em><p>Enter a list of identifiers to be forwarded to the list analysis page.  Click here to view an example.</p></em>
        <html:form action="/buildBag" focus="pasteInput">

                <html:select styleId="typeSelector" property="type">
                        <html:option value="Gene">Gene</html:option>
                        <html:option value="Protein">Protein</html:option>
                </html:select>
            <html:textarea styleId="pasteInput" property="text" rows="2" cols="30" />
            <html:submit styleId="submitBag">Analyse</html:submit>
        </html:form>
    </im:boxarea>

 <br style="clear: left;" />


<ul class="tabs">
    <li><a href="#tab1">Genes</a></li>
    <li><a href="#tab2">Proteins</a></li>
    <li><a href="#tab3">Interactions</a></li>
    <li><a href="#tab4">Publications</a></li>
    <li><a href="#tab5">Homologues</a></li>
    <li><a href="#tab6">Gene Ontology</a></li>
    <li><a href="#tab7">Gene Expression</a></li>
</ul>

<div class="tab_container">
    <div id="tab1" class="tab_content">
        The gene structure and other genome annotation in FlyMine are provided by a variety of source databases including: FlyBase, UniProt, Ensembl and over 30 other data sources.  <a href="dataCategories.do">Read more...</a>

        <br/>

        <table width="50%" cellpadding="10"><tr><td>
        Query for genes,  using:
        <ul>
            <li><a href="template.do?name=ChromLocation_Gene">locations</a></li>
             <li><a href="template.do?name=Publication_Genes">publications</a></li>
            <li><a href="template.do?name=Pathway_Genes">pathways</a></li>
        </ul>
        </td>
        <td>
        Query using gene identifier(s), returning a list of:
        <ul>
            <li><a href="template.do?name=Gene_Interaction">interactions</a></li>
            <li><a href="template.do?name=Gene%20_adjacent%20genes">adjacent genes</a></li>
            <li><a href="template.do?name=Gene_OverlapppingGenes">overlapping genes</a></li>
        </ul>
        </td></tr></table>

        <a href="templates.do">Click here</a> for more queries.
    </div>
    <div id="tab2" class="tab_content">
        FlyMine loads proteins from UniProt and protein domains from InterPro.  <a href="aspect.do?name=Proteins">Read more...</a>
        <br/>
        <table width="50%" cellpadding="10"><tr><td>
        Query for genes,  using:
        <ul>
            <li><a href="template.do?name=ChromLocation_Gene">locations</a></li>
            <li><a href="template.do?name=Probe_Gene">Affymetrix probesets</a></li>
            <li><a href="template.do?name=Pathway_Genes">pathways</a></li>
        </ul>
        </td>
        <td>
        Query using gene identifier(s), returning a list of:
        <ul>
            <li><a href="template.do?name=Gene_Interaction">interactions</a></li>
            <li><a href="template.do?name=Gene%20_adjacent%20genes">adjacent genes</a></li>
            <li><a href="template.do?name=Gene_OverlapppingGenes">overlapping genes</a></li>
        </ul>
        </td></tr></table>

    </div>
        <div id="tab3" class="tab_content">
        FlyMine loads interactions from IntAct and BioGRID  <a href="aspect.do?name=Interactions">Read more</a>
        <br/>
        <table width="50%" cellpadding="10"><tr><td>
        Query for genes,  using:
        <ul>
            <li><a href="template.do?name=ChromLocation_Gene">locations</a></li>
            <li><a href="template.do?name=Probe_Gene">Affymetrix probesets</a></li>
            <li><a href="template.do?name=Pathway_Genes">pathways</a></li>
        </ul>
        </td>
        <td>
        Query using gene identifier(s), returning a list of:
        <ul>
            <li><a href="template.do?name=Gene_Interaction">interactions</a></li>
            <li><a href="template.do?name=Gene%20_adjacent%20genes">adjacent genes</a></li>
            <li><a href="template.do?name=Gene_OverlapppingGenes">overlapping genes</a></li>
        </ul>
        </td></tr></table>
    </div>
        <div id="tab4" class="tab_content">
        FlyMine loads publication data from over 30 sources.  <a href="aspect.do?name=Literature">Read more</a>
        <br/>
        <table width="50%" cellpadding="10"><tr><td>
        Query for genes,  using:
        <ul>
            <li><a href="template.do?name=ChromLocation_Gene">locations</a></li>
            <li><a href="template.do?name=Probe_Gene">Affymetrix probesets</a></li>
            <li><a href="template.do?name=Pathway_Genes">pathways</a></li>
        </ul>
        </td>
        <td>
        Query using gene identifier(s), returning a list of:
        <ul>
            <li><a href="template.do?name=Gene_Interaction">interactions</a></li>
            <li><a href="template.do?name=Gene%20_adjacent%20genes">adjacent genes</a></li>
            <li><a href="template.do?name=Gene_OverlapppingGenes">overlapping genes</a></li>
        </ul>
        </td></tr></table>
    </div>
        <div id="tab5" class="tab_content">
        FlyMine loads homologues from InParanoid, KEGG and TreeFam.  <a href="aspect.do?name=Comparative+Genomics">Read more</a>
        <br/>
        <table width="50%" cellpadding="10"><tr><td>
        Query for genes,  using:
        <ul>
            <li><a href="template.do?name=ChromLocation_Gene">locations</a></li>
            <li><a href="template.do?name=Probe_Gene">Affymetrix probesets</a></li>
            <li><a href="template.do?name=Pathway_Genes">pathways</a></li>
        </ul>
        </td>
        <td>
        Query using gene identifier(s), returning a list of:
        <ul>
            <li><a href="template.do?name=Gene_Interaction">interactions</a></li>
            <li><a href="template.do?name=Gene%20_adjacent%20genes">adjacent genes</a></li>
            <li><a href="template.do?name=Gene_OverlapppingGenes">overlapping genes</a></li>
        </ul>
        </td></tr></table>
    </div>
        <div id="tab6" class="tab_content">
        FlyMine loads gene ontology from MGI, FlyBase, WormBase, UniProt, SGD, and InterPro.  <a href="aspect.do?name=Gene+Ontology">Read more</a>
        <br/>
        <table width="50%" cellpadding="10"><tr><td>
        Query for genes,  using:
        <ul>
            <li><a href="template.do?name=ChromLocation_Gene">locations</a></li>
            <li><a href="template.do?name=Probe_Gene">Affymetrix probesets</a></li>
            <li><a href="template.do?name=Pathway_Genes">pathways</a></li>
        </ul>
        </td>
        <td>
        Query using gene identifier(s), returning a list of:
        <ul>
            <li><a href="template.do?name=Gene_Interaction">interactions</a></li>
            <li><a href="template.do?name=Gene%20_adjacent%20genes">adjacent genes</a></li>
            <li><a href="template.do?name=Gene_OverlapppingGenes">overlapping genes</a></li>
        </ul>
        </td></tr></table>
    </div>
        <div id="tab7" class="tab_content">
        FlyMine loads gene expression data for Drosophila melanogaster and Anopheles gambiae from FlyAtlas, BDGP, ArrayExpress and Fly-FISH.  <a href="aspect.do?name=Gene+Expression">Read more...</a>
        <br/>
        <table width="50%" cellpadding="10"><tr><td>
        Query for genes,  using:
        <ul>
            <li><a href="template.do?name=ChromLocation_Gene">locations</a></li>
            <li><a href="template.do?name=Publication_Genes">publications</a></li>
            <li><a href="template.do?name=Pathway_Genes">pathways</a></li>
        </ul>
        </td>
        <td>
        Query using gene identifier(s), returning a list of:
        <ul>
            <li><a href="template.do?name=Gene_Interaction">interactions</a></li>
            <li><a href="template.do?name=Gene%20_adjacent%20genes">adjacent genes</a></li>
            <li><a href="template.do?name=Gene_OverlapppingGenes">overlapping genes</a></li>
        </ul>
        </td></tr></table>
    </div>

</div>

 <br style="clear: left;" />
 <br style="clear: both;" />

       <div>
        <c:if test="${!empty WEB_PROPERTIES['project.rss']}">
          <tiles:insert name="news.tile" />
        </c:if>
      </div>

</div>
<script language="javascript">
<!--//<![CDATA[
    document.getElementById("takeATourLink").style.display="block";

    $(document).ready(function() {

    //When page loads...
    $(".tab_content").hide(); //Hide all content
    $("ul.tabs li:first").addClass("active").show(); //Activate first tab
    $(".tab_content:first").show(); //Show first tab content

    //On Click Event
    $("ul.tabs li").click(function() {

        $("ul.tabs li").removeClass("active"); //Remove any "active" class
        $(this).addClass("active"); //Add "active" class to selected tab
        $(".tab_content").hide(); //Hide all tab content

        var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
        $(activeTab).fadeIn(); //Fade in the active ID content
        return false;
    });

});


//]]>-->
</script>
<!-- /begin.jsp -->