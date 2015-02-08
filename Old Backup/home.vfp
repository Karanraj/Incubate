<apex:page sidebar="false" showHeader="false" docType="html-5.0" Controller="HomefaqController" standardStylesheets="false">
   <head>
      <meta charset="UTF-8" />
      <title>Salesforce FAQ</title>
      <link rel="stylesheet" href="/resource/Incubator/resources/styles/bootstrap.min.css" />
      <link rel="stylesheet" href="/resource/Incubator/resources/styles/bootstrap-theme.min.css" />
      <script src="/resource/Incubator/resources/js/jquery.min.js"></script>
      <script src="/resource/Incubator/resources/js/bootstrap.min.js"></script>
   </head>
   <body>
      <!-- Static navbar -->
      <nav class="navbar navbar-default">
         <div class="container-fluid">
            <div class="navbar-header">
               <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
               <span class="sr-only">Toggle navigation</span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               </button>
               <a class="navbar-brand" href="/apex/Incubate">Force Incubator | Salesforce FAQ for Interview </a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
               <ul class="nav navbar-nav navbar-right">
                  <li><a href="http://developer.salesforce.com/trailhead">Trailhead</a>
                  </li>
                  <li><a href="http://salesforce.stackexchange.com/">StackExchange</a>
                  </li>
               </ul>
            </div>
            <!--/.nav-collapse -->
         </div>
         <!--/.container-fluid -->
      </nav>
      <ul class="nav nav-tabs">
         <li class="active"><a data-toggle="tab" href="#sectionApex">APEX</a>
         </li>
         <li><a data-toggle="tab" href="#sectionVF">VISUALFORCE</a>
         </li>
         <li><a data-toggle="tab" href="#sectionS1">Salesforce1 Mobile</a>
         </li>
      </ul>
      <!-- end of Header tab -->
      <!-- Start of Apex section -->
      <div class="tab-content">
         <div id="sectionApex" class="tab-pane fade in active">
            <div class="panel-group" id="accordionApex">
               <apex:variable var="count" value="{!1}"/>
               <apex:repeat value="{!apexFAQ}" var="apex">
                  <div class="panel panel-default">
                     <div class="panel-heading">
                        <h4 class="panel-title">
                           <a data-toggle="collapse" data-parent="#accordionApex" href="#{!apex.Name}">{!count}. {!apex.question__c}</a>
                        </h4>
                     </div>
                     <div id="{!apex.Name}" class="panel-collapse collapse">
                        <div class="panel-body">
                           <apex:repeat value="{!apex.FAQAnswers__r}" var="ans">
                              <p>
                                 <apex:outputText value="{!ans.Answer_Part_1__c}" escape="false" />
                                 <apex:outputText value="{!ans.Answer_Gist_Part_1__c}" escape="false" />
                                 <apex:outputText value="{!ans.Answer_Part_2__c}" escape="false" />
                                 <apex:outputText value="{!ans.Answer_Gist_Part_2__c}" escape="false" />
                                 <apex:outputText value="{!ans.Answer_Part_3__c}" escape="false" />
                                 <apex:outputText value="{!ans.Answer_Gist_Part_3__c}" escape="false" />
                              </p>
                           </apex:repeat>
                        </div>
                     </div>
                     <!-- LikeBtn.com BEGIN -->
                     <span class="drop"></span>
                     <script>(function(d,e,s){a=d.createElement(e);m=d.getElementsByTagName(e)[0];a.async=1;a.src=s;m.parentNode.insertBefore(a, m)})(document,"script","//w.likebtn.com/js/w/widget.js");</script>
                     <!-- LikeBtn.com END -->
                  </div>
                  <apex:variable var="count" value="{!count + 1}"/>
               </apex:repeat>
            </div>
            <!-- apex Pagination section -->
            <div class="col-md-12 text-center">
               <ul id="ApexPager" class="pagination"></ul>
            </div>
            <!-- End of apex pagination -->
         </div>
         <!-- end of Apex -->
         <!-- Visualforce section -->
         <div id="sectionVF" class="tab-pane fade">
            <div class="panel-group" id="accordionVF">
               <apex:variable var="vfcount" value="{!1}"/>
               <apex:repeat value="{!visualforceFAQ}" var="vf">
                  <div class="panel panel-default">
                     <div class="panel-heading">
                        <h4 class="panel-title">
                           <a data-toggle="collapse" data-parent="#accordionVF" href="#{!vf.Name}">{!vfcount}. {!vf.question__c}</a>
                        </h4>
                     </div>
                     <div id="{!vf.Name}" class="panel-collapse collapse">
                        <apex:repeat value="{!vf.FAQAnswers__r}" var="vfans">
                           <div class="panel-body">
                              <apex:outputText value="{!vfans.Answer_Part_1__c}" escape="false" />
                              <br/>
                              <apex:outputText value="{!vfans.Answer_Gist_Part_1__c}" escape="false" />
                              <apex:outputText value="{!vfans.Answer_Part_2__c}" escape="false" />
                              <br/>
                              <apex:outputText value="{!vfans.Answer_Gist_Part_2__c}" escape="false" />
                              <apex:outputText value="{!vfans.Answer_Part_3__c}" escape="false" />
                              <br/>
                              <apex:outputText value="{!vfans.Answer_Gist_Part_3__c}" escape="false" />
                           </div>
                        </apex:repeat>
                     </div>
                     <!-- LikeBtn.com BEGIN -->
                     <span class="drop"></span>
                     <script>(function(d,e,s){a=d.createElement(e);m=d.getElementsByTagName(e)[0];a.async=1;a.src=s;m.parentNode.insertBefore(a, m)})(document,"script","//w.likebtn.com/js/w/widget.js");</script>
                     <!-- LikeBtn.com END -->
                  </div>
                  <apex:variable var="vfcount" value="{!vfcount + 1}"/>
               </apex:repeat>
            </div>
            <!-- VF Pagination section -->
            <div class="col-md-12 text-center">
               <ul id="VFPager" class="pagination"></ul>
            </div>
            <!-- End of VF pagination -->
         </div>
         <!-- End of VF section -->
         <!-- Start of Salesforce1 section -->
         <div id="sectionS1" class="tab-pane fade">
            <div class="panel-group" id="accordionS1">
               <apex:variable var="s1count" value="{!1}"/>
               <apex:repeat value="{!s1mobileFAQ}" var="s1">
                  <div class="panel panel-default">
                     <div class="panel-heading">
                        <h4 class="panel-title">
                           <a data-toggle="collapse" data-parent="#accordionS1" href="#{!s1.Name}">{!s1count}. {!s1.question__c}</a>
                        </h4>
                     </div>
                     <div id="{!s1.Name}" class="panel-collapse collapse in">
                        <div class="panel-body">
                           <apex:repeat value="{!s1.FAQAnswers__r}" var="s1ans">
                              <p>
                                 <apex:outputText value="{!s1ans.Answer_Part_1__c}" escape="false" />
                                 <apex:outputText value="{!s1ans.Answer_Gist_Part_1__c}" escape="false" />
                                 <apex:outputText value="{!s1ans.Answer_Part_2__c}" escape="false" />
                                 <apex:outputText value="{!s1ans.Answer_Gist_Part_2__c}" escape="false" />
                                 <apex:outputText value="{!s1ans.Answer_Part_3__c}" escape="false" />
                                 <apex:outputText value="{!s1ans.Answer_Gist_Part_3__c}" escape="false" />
                              </p>
                           </apex:repeat>
                        </div>
                     </div>
                     <!-- LikeBtn.com BEGIN -->
                     <span class="drop"></span>
                     <script>(function(d,e,s){a=d.createElement(e);m=d.getElementsByTagName(e)[0];a.async=1;a.src=s;m.parentNode.insertBefore(a, m)})(document,"script","//w.likebtn.com/js/w/widget.js");</script>
                     <!-- LikeBtn.com END -->
                  </div>
                  <apex:variable var="s1count" value="{!s1count + 1}"/>
               </apex:repeat>
            </div>
            <!-- S1 Pagination section -->
            <div class="col-md-12 text-center">
               <ul id="S1Pager" class="pagination"></ul>
            </div>
            <!-- End of S1 pagination -->
         </div>
         <!-- End of Salesforce1 section -->
      </div>
      <!-- <link rel="stylesheet" href="/resource/Incubator/resources/styles/style.css" /> -->
      <style>
         .gist .line-numbers{color:#AAA;text-align:right;background-color:#FFF;border-right:1px solid #EEE;line-height:1.9e;padding:.5em}.gist .line-data{background-color:#000}.gh-text{font-size:18px}.gist .line-pre,.gist .pl-s1 .pl-s2,.gist .pl-smi,.gist .pl-smp,.gist .pl-stj,.gist .pl-vo,.gist .pl-vpf{color:hotpink;} .gist .line-pre, .gist .pl-s1 .pl-s2, .gist .pl-smi, .gist .pl-smp, .gist .pl-stj, .gist .pl-vo, .gist .pl-vpf {
         color: white;
         }
         .gist .pl-e, .gist .pl-en {
         color: greenyellow;
         }
         .gist .pl-k, .gist .pl-s, .gist .pl-st {
         color: deeppink;
         }
      </style>
   </body>
   <script src="/resource/Incubator/resources/js/script.js"></script>
</apex:page>