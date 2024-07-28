<%-- 
    Document   : updated_fees
    Created on : 17-Apr-2024, 7:58:53 am
    Author     : chauh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fee structure</title>a
    </head>
    <body>
        
        <form action="insertFees" method="post">
       <table>
    <thead>
        <tr>
            <th rowspan="2">Fee Details</th>
            <th colspan="2">Amount (INR)</th>
        </tr>
        <tr>
            <th>Batch: <input type="text" id="batch1" name="batch1"></th>
            <th>Batch: <input type="text" id="batch1" name="batch2"></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th>Institute's Share</th>
            
        </tr>
        <tr>
            <td>Academic Fee of the Institute</td>
            <td>Fees: <input type="text" id="fee1" name="fee1"></td>
            <td>Fees: <input type="text" id="fee2" name="fee2"></td>
        </tr>
        <tr>
            <td>Students' Activity Fee</td>
            <td>Fees: <input type="text" id="fee3" name="fee3"></td>
            <td>Fees: <input type="text" id="fee4" name="fee4"></td>
        </tr>
        <tr>
            <td>Alumni Fees (Paid only in 1st year)</td>
            <td>Fees: <input type="text" id="fee5" name="fee5"></td>
            <td>-</td>
        </tr>
        <tr>
            <td>Subtotal Fee</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td colspan="3">Security Deposit (Refundable)</td>
        </tr>
        <tr>
            <td>Security Deposit (Refundable) Paid only in 1st year</td>
            <td>Fees: <input type="text" id="fee8" name="fee8"></td>
            <td>-</td>  
        </tr>
        <tr>
            <td colspan="3">University's Share</td>
        </tr>
        <tr>
            <td>University Fee (includes Examination fee for two semesters, enrollment fee, etc.)</td>
            <td>Fees: <input type="text" id="fee9" name="fee9"></td>
            <td>Fees: <input type="text" id="fee10" name="fee10"></td>
        </tr>
        <tr>
            <td>Membership Fee of Professional Societies</td>
            <td>-</td>
            <td>-</td>
        </tr>
        <tr>
            <td>Institution of Information Technology Profession (IITP) Membership Fee (One Time for entire Life)</td>
            <td>Fees: <input type="text" id="fee11" name="fee11"></td>
            <td>-</td>
        </tr>
        <tr>
            <td>Indian Society for Technical Education (ISTE) Membership Fee (One Time for 02 years)</td>
            <td>Fees: <input type="text" id="fee12" name="fee12"></td>
            <td>-</td>
        </tr>
        <tr>
            <td>Institution of Electronics and Telecommunication Engineers (IETE) Membership Fee (One Time for 02 years)</td>
            <td>Fees: <input type="text" id="fee13" name="fee13"></td>
            <td>-</td>
        </tr>
        <tr>
            <td>Institute of Electrical and Electronics Engineers (IEEE) Membership Fee (Annually)</td>
            <td>Fees: <input type="text" id="fee14" name="fee14"></td>
            <td>Fees: <input type="text" id="fee15" name="fee15"></td>
        </tr>
        <tr>
            <td>Grand Total Fee (Per Annum) to be paid by the students</td>
            <td>Fees: </td>
            <td>Fees: </td>
        </tr>
       
    </tbody>
</table> 
            <p style="padding-left: 50%;"><input type="submit" value="Submit Fees" id="submitFees"></p>
    </form>


        <form action="insertFeesBA" method="post">
    <table>
        <caption>Fee Details</caption>
        <thead>
            <tr>
                <th rowspan="2">Fee Details</th>
                <th colspan="3">Amount (INR)</th>
            </tr>
            <tr>
                <th>1st Year Batch:</th>
                <th>2nd Year Batch:</th>
                <th>3rd Year Batch:</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th>Institute's Share</th>
            </tr>
            <tr>
                <td>Academic Fee of the Institute</td>
                <td>Fees: <input type="text" id="bafee1" name="bafee1"></td>
                <td>Fees: <input type="text" id="bafee2" name="bafee2"></td>
                <td>Fees: <input type="text" id="bafee3" name="bafee3"></td>
            </tr>
            <tr>
                <td>Students' Activity Fee</td>
                <td>Fees: <input type="text" id="bafee4" name="bafee4"></td>
                <td>Fees: <input type="text" id="bafee5" name="bafee5"></td>
                <td>Fees: <input type="text" id="bafee6" name="bafee6"></td>
            </tr>
            <tr>
                <td>Alumni Fees (Paid only in 1st year)</td>
                <td>Fees: <input type="text" id="bafee7" name="bafee7"></td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td>Subtotal Fee</td>
                <td>Fees: </td>
                <td>Fees: </td>
                <td>Fees: </td>
            </tr>
            <tr>
                <td colspan="4">Security Deposit (Refundable)</td>
            </tr>
            <tr>
                <td>Security Deposit (Refundable) Paid only in 1st year</td>
                <td>Fees: <input type="text" id="bafee11" name="bafee11"></td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td colspan="4">University's Share</td>
            </tr>
            <tr>
                <td>University Fee (includes Examination fee for two semesters, enrollment fee, etc.)</td>
                <td>Fees: <input type="text" id="bafee12" name="bafee12"></td>
                <td>Fees: <input type="text" id="bafee13" name="bafee13"></td>
                <td>Fees: <input type="text" id="bafee14" name="bafee14"></td>
            </tr>
            <tr>
                <td>Membership Fee of Professional Societies</td>
                <td>Fees: <input type="text" id="bafee15" name="bafee15"></td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td>Institution of Media Professionals (IMP) Membership Fee (One Time for entire Life)</td>
                <td>Fees: <input type="text" id="bafee16" name="bafee16"></td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td>Delhi Journalists Association (DJA) Membership Fee (One Time for 03 Years)</td>
                <td>Fees: <input type="text" id="bafee17" name="bafee17"></td>
                <td>Fees: <input type="text" id="bafee18" name="bafee18"></td>
                <td>Fees: <input type="text" id="bafee19" name="bafee19"></td>
            </tr>
            <tr>
                <td>Grand Total Fee (Per Annum) to be paid by the students</td>
                <td>Fees: </td>
                <td>Fees: </td>
                <td>Fees: </td>
            </tr>
        </tbody>
    </table>
    <div>
        <label for="baBatch1">1st Year Batch:</label>
        <input type="text" id="baBatch1" name="baBatch1">
    </div>
    <div>
        <label for="baBatch2">2nd Year Batch:</label>
        <input type="text" id="baBatch2" name="baBatch2">
    </div>
    <div>
        <label for="baBatch3">3rd Year Batch:</label>
        <input type="text" id="baBatch3" name="baBatch3">
    </div>
    <input type="submit" value="Submit Fees" id="submitFees">
</form>





        
        
        
    </body>
</html>