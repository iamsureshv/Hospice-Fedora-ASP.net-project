<%@ Page Language="C#" AutoEventWireup="true" CodeFile="facilities.aspx.cs" Inherits="facilities" MasterPageFile="~/MasterPage.master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="float: left; width: 260px; height: 420px; ">
        <div style="height:419px;background-image:url(images/ambulance100.jpg); width: 252px;">
        </div>
        <div style="height:418px;background-image:url(images/doctorpart.jpg); width: 251px;">
        </div>
         <div style="height:348px;background-image:url(images/organ2.jpg); width: 251px;">
        </div>
        <div style="height:497px;background-image:url(images/bloodbank.jpg); width: 251px;">
        </div>
    </div>
    
    <div style="float: right; width: 637px; height: 495px">
        <br />
        <table>
            <tr>
                <td colspan="3">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Emergency Service"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 300px; height: 21px"  align="left">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Registration Ambulance Service" Width="222px"></asp:Label></td>
                <td style="width: 286px; height: 21px">
                </td>
                <td style="width: 339px; height: 21px">
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 21px">
                    Here you can register your ambulance service and provide the facilities for ambulance
                    service. Mobile ICU can&nbsp; also register here. By registering you can provide&nbsp;
                    ambulance services for the requested person.<br />
                    <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Size="Large"
                        ForeColor="Blue" NavigateUrl="~/reg_ambulance.aspx">Click Here To Register</asp:HyperLink></td>
            </tr>
            <tr>
                <td colspan="5" style="height: 21px">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Organ Donation"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="1" style="height: 21px" align="left">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Eye Donation"></asp:Label></td>
                <td colspan="1" style="height: 21px">
                </td>
                <td colspan="3" style="height: 21px">
                </td>
            </tr>
            <tr>
                <td colspan="5" style="height: 21px">
                    Do you know that our eyes live even after our death? Do you know that we can light
                    the life of a blind person by donating our eyes after our death? Do you know that
                    eye donation is the noblest of all causes?<br />
                    Through our Eye Bank, we obtain, evaluate and distribute eyes received as donations
                    from good-minded people for use in corneal transplantation, research and education.
                    We do this with utmost care taking into account patient safety by adopting strict
                    medical standards. While eyes that are found suitable for corneal transplantation
                    are used for corneal transplantation, other eyes received that are not suitable
                    for transplantation, are also put to good use as these are used for research and
                    education.
                    <br />
                    <strong>Some frequently asked questions about eye donation </strong>
                    <p>
                        <strong>Who can be eye donors?</strong><br />
                        Any good-minded human being from the age of z year can be a donor without any maximum
                        limit for donating the eye. All one needs to do is bequeath his or her eyes by taking
                        a simple pledge to donate the eye after death. While taking a pledge during ones
                        lifetime itself is a noble deed, it requires the support of the relatives or friends
                        to carry out the wishes of eye donation of the deceased. They need to call up the
                        Eye Bank immediately as the eye need to be removed within a maximum of six hours
                        of death. People using spectacles, diabetes and hypertensives can make eye donation.
                    </p>
                    <p>
                        <strong>Can the next of kin consent to a donation if the deceased person has not signed
                            an eye donation form?</strong><br />
                        Yes, the relatives of the deceased can decide on the eye donation of their beloved
                        one.
                    </p>
                    <p>
                        <strong>How to make the eye donation?</strong><br />
                        The relatives of the deceased person can donate the eyes of their beloved ones immediately
                        after the death. As explained already, the eyes need to be collected within six
                        hours of death.</p>
                    <p>
                        <strong>Who cannot donate their eyes?</strong><br />
                        Death due to unknown causes. Death due to infections caused viz. rabies, syphilis,
                        infectious hepatitis, septicemia, and AIDS, cannot be a donor.</p>
                    <p>
                        <strong>What is a cornea?</strong><br />
                        The cornea is the clear, transparent dome in front of the "black portion" of the
                        eye. It is also the main focusing surface, which converges light rays as they enter
                        the eye to focus on the retina. It is thus the most important part of the optical
                        apparatus of the Eye. Loss of transparency directly results in loss of vision
                    </p>
                    <p>
                        <strong>How does a cornea become opaque?</strong></p>
                    <ul>
                        <li>Infection </li>
                        <li>Injuries </li>
                        <li>Iatrogenic (Malpractice, Improper Post-op. care after any eye surgery) </li>
                        <li>Malnutrition </li>
                        <li>Congenital/Hereditary. </li>
                    </ul>
                    <p>
                        <strong>What is corneal transplantation?</strong><br />
                        A Corneal transplant is an operation that replaces the opaque cornea with a clear
                        cornea obtained from a human donor.
                    </p>
                    <p>
                        <strong>Are there any religious conflicts in eye donation?</strong><br />
                        There are no religious conflicts on eye donation. Eye donation gives a gift of life
                        or sight to others. As such, it is consistent with beliefs and attitudes of all
                        major religious and ethical traditions.</p>
                    <p>
                        <strong>Will eye donation cause delays in funeral arrangement?</strong><br />
                        No, Eye removal is performed within half an hour after death and leaves no disfiguring,
                        that would interfere with common funeral practices.
                    </p>
                    <p>
                        <strong>Is the whole eye of the donor transplanted?</strong><br />
                        No, only the cornea is transplanted. However, the rest of the eye is used for research
                        and education purposes.</p>
                    <p>
                        <strong>Can a person who is blind due to retinal or optic nerve disease donate his eyes?</strong><br />
                        Yes, provided the cornea of the donor is clear.</p>
                    <p>
                        <strong>Can a living person donate his eyes?</strong><br />
                        No, donation from living persons is not accepted.</p>
                    <p>
                        <strong>Will the recipient be informed of the donor’s details?</strong><br />
                        No, the gift of sight is made anonymously.</p>
                    <p>
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Large"
                            ForeColor="Blue" NavigateUrl="~/donation.aspx">Click Here To Donate Your EYES</asp:HyperLink>&nbsp;</p>
                </td>
            </tr>
            <tr>
                <td colspan="1" style="height: 21px" align="left">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Kidney Donation"></asp:Label></td>
                <td colspan="1" style="height: 21px">
                </td>
                <td colspan="5" style="height: 21px">
                </td>
            </tr>
            <tr>
                <td colspan="7" style="height: 21px">
                    <p>
                        There is on an urgent need to increase the number of organs available for transplantation
                        in the India . To address this complex problem, the Board of Directors of the National
                        Kidney Foundation has launched a comprehensive action plan to increase the number
                        of transplants for kidney patients.<br />
                    </p>
                    <p>
                        <strong><em>The End the Wait!</em></strong> initiative is a roadmap to implementing
                        tested and proven strategies that will effectively end the wait for kidney transplants
                        in 10 years.</p>
                    <p>
                        Working in collaboration with other organizations, government agencies and individuals,
                        Hospice Fedora’s recommendations will eliminate barriers, institute best practices
                        across the nation, improve the transplant system, cover the cost of donating an
                        organ, reduce regional and ethnic disparities and increase living and deceased donation
                        throughout the India.</p>
                    <p>
                        There is on an ongoing and urgent need to increase the number of organs available
                        for transplantation in&nbsp; India. To address this complex problem, the National
                        Kidney Foundation has developed a comprehensive action plan to increase the number
                        of transplants for kidney patients—and to <em>End the Wait!</em>
                    </p>
                    <p>
                        This groundbreaking program will serve as a roadmap to implementing tested and proven
                        strategies that will effectively end the wait for kidney transplants in 10 years.
                        By collaborating with many organizations, government agencies and individuals, NKF’s
                        End the Wait! recommendations will eliminate barriers, institute best practices
                        across the nation, improve the transplant system, cover the cost of donating an
                        organ, reduce regional and ethnic disparities and increase living and deceased donation
                        throughout the India.</p>
                    <p>
                        The National Kidney Foundation’s mission has included increasing and improving transplantation
                        for decades, and the NKF continues to carry out programs in education, research
                        and services to fulfill our goal.</p>
                    <p>
                        This initiative will end the long wait for a transplant that has subjected too many
                        patients to deteriorating health, poor quality of life and even premature death.
                        Our efforts will begin immediately and will continue for years.&nbsp; By working
                        together and focusing on the big picture and real needs of our patients, we will
                        have a dramatic impact on the health of kidney patients across the country</p>
                    <p>
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Size="Large"
                            ForeColor="Blue" NavigateUrl="~/donation.aspx">Click Here To Donate Your KIDNEY</asp:HyperLink>&nbsp;</p>
                </td>
            </tr>
            <tr>
                <td colspan="1" style="height: 21px" align="left">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Heart Donation"></asp:Label></td>
                <td colspan="1" style="height: 21px">
                </td>
                <td colspan="7" style="height: 21px; width: 164px;">
                </td>
            </tr>
            <tr>
                <td colspan="9" style="height: 21px">
                    <p>
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr valign="center">
                                <td colspan="3" height="40">
                                    <span class="redhead"><strong>Hearts prevail over Time &amp; Distance </strong></span>
                                </td>
                            </tr>
                            <tr valign="top">
                                <td align="left" colspan="3">
                                    <div align="justify">
                                        Successfully completed heart transplants in recent days are proof of the phenomenal
                                        advancement in telecommunications and transportation in our nation. What used to
                                        take days to organize and coordinate was achieved in a matter of hours, well within
                                        the critical window of opportunity permissible, known as the ‘golden hour', for
                                        such a delicate and complex procedure.</div>
                                    <p align="justify">
                                        The lightning speed in which suitable recipients were identified for the donor's
                                        organs speaks of the commitment of those involved in order to offer a fresh lease
                                        to the anxious recipients awaiting the critical phone call. Once a donor was confirmed,
                                        Abirami of Bangalore was identified as an ideal candidate. Good planning and smooth
                                        coordination enabled immediate notification to Abirami's parents on Monday night
                                        and arrangements were hastily made to transport her to Chennai where her new heart
                                        was waiting. The heart itself found its way smoothly from Apollo Specialty hospital,
                                        where it was expertly harvested by Frontier Lifeline's Organ Harvest Team, to Frontier
                                        Lifeline in a record time of 11 minutes. The route which usually takes a minimum
                                        of 40 minutes under normal traffic conditions was magically cleared during peak
                                        traffic hours with the timely help of Chennai's Traffic Police. Within 28 minutes
                                        of having been removed from the donor's body, the heart found itself placed in its
                                        new home and it was a matter of expert surgical skills which got the heart beating
                                        once more, 90 minutes after it had last beat within the chest of the donor. It was
                                        a miracle for all to witness as the heart pumped strongly within Abirami's chest,
                                        infusing her frail form with rich oxygenated blood.
                                    </p>
                                    <p align="justify">
                                        But miracles often have a human element as well and that came in the form of the
                                        donor Hithendran, and his parents, both of whom are doctors. Under such emotionally
                                        charged circumstances the pragmatic decision of his parents to donate his organs
                                        takes great strength of spirit. As doctors, the implications and benefits of this
                                        altruistic act were not lost on them and they remained true to their noble profession
                                        of selfless service. Today Hithendran continues to live on through at least 8 persons
                                        who enjoy a better quality of life through his premature sacrifice.
                                    </p>
                                    <p align="justify">
                                        Ease of interstate organ donation and retrieval policies would enormously aid in
                                        the immediate availability and match of donors with recipients. Transplantation
                                        of organs has been seen to be highly successful especially with young patients.
                                        The rate of survival in the first year in patients below 5 years of age is 95%,
                                        75% for patients below 10 years and 40 % for patients below 20 years of age. Successful
                                        re-transplantation is also possible. Heart transplants cost as much as any other
                                        transplant operations. But recurring costs are incurred through immunosuppressant
                                        drugs which are a life-long necessity. However, unlike kidney and liver transplants,
                                        the expense of these drugs is much less as the heart primarily performs a mechanical
                                        action rather than a metabolic function. After the first year the cost comes down
                                        significantly, averaging to about Rs 500/- a month.
                                    </p>
                                    <p align="justify">
                                        A census taken in 2006 stated that Tamil Nadu has reported the maximum number (55,145)
                                        of road accidents accounting for 14% of such accidents in the country. The number
                                        of organs which can be made available for the benefit of countless others is a potentially
                                        achievable figure. But this can be accomplished only if there is a mass awakening
                                        among the greater public on the invaluable service this selfless act provides. Successful
                                        organ transplantation can take on a fresh lease of life through enlightened donors
                                        and their families. This was demonstrated through the mass organ donation pledge
                                        taken by the young citizens of Erode from Siddhartha Matriculation Higher Secondary
                                        School , in response to news reports of the noble deed by Hithendran's parents.
                                    </p>
                                    <p align="justify">
                                        Together with the support of Grief Counselors and Transplant Coordinators and a
                                        comprehensive Registry of potential Recipients that is meticulously maintained along
                                        with the amassing awareness propagated through the print and electronic media and
                                        the heart-warming response of our young civic-conscious citizens, we as a nation
                                        of 1.2 billion, should be able to cater to the needs of the millions waiting for
                                        new organs and a new life.
                                    </p>
                                </td>
                            </tr>
                        </table>
                    </p>
                    <p>
                        Hearts for transplant come from deceased donors. There is an urgent need for organ
                        donation in the India, where almost 1,90,000 people are waiting for lifesaving organ
                        transplants.</p>
                    <p>
                        Our doctors and nurses are keenly aware of this need and they are actively involved
                        in efforts to raise awareness about organ donation.
                    </p>
                    <p>
                        Because Children’s provides specialty care across India—we are uniquely positioned
                        to search for viable organs in a wider geographic area than many other children’s
                        hospitals in the nation.<br />
                        <br />
                        Our physicians and surgeons are working to improve the situation for children who
                        need transplants.&nbsp;
                    </p>
                    <p>
                        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Size="Large"
                            ForeColor="Blue" NavigateUrl="~/donation.aspx">Click Here To Donate Your HEART</asp:HyperLink>&nbsp;</p>
                </td>
            </tr>
        </table>
    </div>
        
</asp:Content>