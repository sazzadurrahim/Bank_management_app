package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import com.example.demo.entity.*;
import com.example.demo.service.AdminDA;
import com.example.demo.service.UserDA;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.repository.ApplyforloanRepo;


@RestController
@CrossOrigin(origins = "*")
public class AdminController {

	private final ApplyforloanRepo applyforloanrepo;

	public AdminController(ApplyforloanRepo applyforloanrepo) {
		this.applyforloanrepo = applyforloanrepo;
	}

//	-------------------- Apply for loan (insert kora hibernate diya ) -------------
	@CrossOrigin(origins = "*")
	@PostMapping("/applyforloan")
	public Applyforloan doapplyforloan(@RequestBody Applyforloan s) {
		Applyforloan data = applyforloanrepo.save(s);
		return data;
	}

//	-------------------- delete Apply for loan  -------------------
	@CrossOrigin(origins = "*")
	@DeleteMapping("/deleteloanapply/{nid}")
	public Applyforloan deleteloanapply(@PathVariable int nid) {
		AdminDA da = new AdminDA();
		Applyforloan data = da.deleteloanapply(nid);
		return data;
	}

//	-------------------- delete Apply for new account  ------------------- 
	@CrossOrigin(origins = "*")
	@DeleteMapping("/deleteaccountapply/{nid}")
	public Applyaccount deleteaccountapply(@PathVariable double nid) {
		AdminDA da = new AdminDA();
		Applyaccount data = da.deleteaccountapply(nid);
		return data;
	}

//	-------------------- Show  Applications for loan / hibernate diya -------------

	List<Applyforloan> showapploan = new ArrayList<>();
	@CrossOrigin(origins = "*")
	@GetMapping("/showapplyforloan")
	public List<Applyforloan> showforloan() {
		showapploan = (List<Applyforloan>) applyforloanrepo.findAll();
		return showapploan;
	}

//	-----------insert data loan-account loanapproval table ya ----------
	@CrossOrigin(origins = "*")
	@PostMapping("/addloanaccount")
	public Loanapproval doaddloanaccount(@RequestBody Loanapproval s) {
		AdminDA da = new AdminDA();
		Loanapproval data=da.dataaddloanaccount(s);
		return data;
	}
	
	
	

//	----------- show loan-account from loanapproval table /hibernate diya----

//	List<Loanapproval> sloanacc = new ArrayList<>();
//	
//	@GetMapping("/showloanaccount")
//	public List<Loanapproval> showloanaccount() {
//		sloanacc =  (List<Loanapproval>) loanapprovalrepo.findAll();
//		return sloanacc;
//	}
	
	
	
	

//	----------- show loan-account from loanapproval table -------------- 

	List<Loanapproval> sloanacc = new ArrayList<>();
	@CrossOrigin(origins = "*")
	@GetMapping("/showloanaccount")
	public List<Loanapproval> showloanaccount() {
		AdminDA da = new AdminDA();
		sloanacc = da.showloanaccount();

		return sloanacc;
	}
	
//	----------- show all customer loan transaction -------------- 

	List<Loantransaction> loantransactionlist = new ArrayList<>();
	@CrossOrigin(origins = "*")
	@GetMapping("/showallloantransaction")
	public List<Loantransaction> showallloantransaction() {
		AdminDA da = new AdminDA();
		loantransactionlist = da.showallloantransaction();
		return loantransactionlist;
	}

//---------------------************Admin Part***************----------------------------------------

//	-------------------- Admin part  //user application for create an account ---------------------------
	@CrossOrigin(origins = "*")
	@PostMapping("/createaccount")
	public Applyaccount docreate(@RequestBody Applyaccount s) {

		UserDA da = new UserDA();
		Applyaccount data = da.createaccount(s);

		return data;
	}

//	--------------------admin add -->> user account ---------------------------
	@CrossOrigin(origins = "*")
	@PostMapping("/adduseraccount")
	public Createaccount doAdduseraccount(@RequestBody Createaccount s) {

		AdminDA da = new AdminDA();
		Createaccount data = da.adduseraccount(s);
		return data;
	}

//	------------------- search an user account, get account details ------------------
	@CrossOrigin(origins = "*")
	@GetMapping("/getaccountdetails/{a_number}")
	public Createaccount search(@PathVariable double a_number) {

		AdminDA da = new AdminDA();
		Createaccount data = da.searchByAccountnumber(a_number);
		return data;
	}
	
//	------------------- search and get loan statement ------------------ 
	List<Loantransaction> sloansta = new ArrayList<>();
	@CrossOrigin(origins = "*")
	@GetMapping("/getloanstatement/{accnumber}")
	public List<Loantransaction> searchloanstatement(@PathVariable int accnumber) {
		AdminDA da = new AdminDA();
		sloansta= da.searchloanstatement(accnumber);
		return sloansta;
	}
	
	
	
//	--------------------------- delete loan account -------------------------------
	@CrossOrigin(origins = "*")
	@DeleteMapping("/deleteloanAccount/{accnumber}")
	public Loanapproval deleteloanaccount(@PathVariable int accnumber) {
		AdminDA da = new AdminDA();
		Loanapproval data = da.deleteloanaccount(accnumber);
		return data;
	}

//	------------------ show application for account/ admin page ya--------------------------- 

	List<Applyaccount> applydata = new ArrayList<>();
	@CrossOrigin(origins = "*")
	@GetMapping("/showapplyforaccount")
	public List<Applyaccount> getapplyforaccount() {

		AdminDA da = new AdminDA();
		applydata = da.showapplyaccount();

		return applydata;
	}

//------------------------ admin login ---------------------------
	@CrossOrigin(origins = "*")
	@GetMapping("/adminlogin/{id}/{password}")
	public Admin login(@PathVariable int id, @PathVariable String password) {
		AdminDA da = new AdminDA();
		Admin data = da.adminLogin(id, password);
		return data;
	}

	// ------------------------ search by admin Id and get -------------------
	@CrossOrigin(origins = "*")
	@GetMapping("/adminSearch/{id}")
	public Admin searchadmin(@PathVariable int id) {
		AdminDA da = new AdminDA();
		Admin data = da.searchAdmin(id);
		return data;
	}

//	------------------ show all admin data --------------------------- 

	List<Admin> x1 = new ArrayList<>();

	@CrossOrigin(origins = "*")
	@GetMapping("/show_admin")
	public List<Admin> getAdminData() {

		AdminDA da = new AdminDA();
		x1 = da.show_admin();

		return x1;
	}

//	----------------- update Admin account -----------------------------------
	@CrossOrigin(origins = "*")
	@PutMapping("/updateAdminAccount")
	public Admin doUpdate(@RequestBody Admin s) {

		AdminDA da = new AdminDA();
		Admin data = da.update(s);

		return data;
	}

//	----------------- delete Admin account ----------------------------
	@CrossOrigin(origins = "*")
	@PostMapping("/deleteAdminAccount")
	public Admin doDelete(@RequestBody Admin s) {

		AdminDA da = new AdminDA();
		Admin data = da.delete(s);
		return data;
	}

//	----------------- delete Admin account by id same page ya ---------------
	@CrossOrigin(origins = "*")
	@DeleteMapping("/deleteAdminAccbyId/{id}")
	public Admin deletebyId(@PathVariable int id) {

		AdminDA da = new AdminDA();
		Admin data = da.deleteAdminbyId(id);
		return data;
	}

//	-----------------admin -- Reject application for account -----------------------------------
	@CrossOrigin(origins = "*")
	@PostMapping("/rejectApplication")
	public Applyaccount doReject(@RequestBody Applyaccount s) {

		AdminDA da = new AdminDA();
		Applyaccount data = da.rejectaccount(s);
		return data;
	}

	// ------------------------Deposit by admin ---------------------------
	@CrossOrigin(origins = "*")
	@GetMapping("/createdeposit/{a_number}/{deposit}")
	public Createaccount createdeposit(@PathVariable double a_number, @PathVariable double deposit) {
		AdminDA da = new AdminDA();
		Createaccount data = da.deposit(a_number, deposit);
		return data;
	}

	// ------------------------pay loan installment by admin
	// ---------------------------
	@CrossOrigin(origins = "*")
	@GetMapping("/payinstallment/{accnumber}/{amount}")
	public Loanapproval payinstallment(@PathVariable int accnumber, @PathVariable double amount) {
		AdminDA da = new AdminDA();
		Loanapproval data = da.payinstallment(accnumber, amount);
		return data;
	}

	// ------------------------Withdraw by admin ---------------------------
	@CrossOrigin(origins = "*")
	@GetMapping("/createwithdraw/{a_number}/{withdraw}/{password}")
	public Createaccount createwithdraw(@PathVariable double a_number, @PathVariable double withdraw,
			@PathVariable String password) {
		AdminDA da = new AdminDA();
		Createaccount data = da.withdrawbalance(a_number, withdraw, password);
		return data;
	}

	// ------------------------money transfer by admin ---------------------------
	@CrossOrigin(origins = "*")
	@GetMapping("/balancetransfer/{fromaccount}/{toaccount}/{transfer}/{password}")
	public Createaccount transferbalance(@PathVariable double fromaccount, @PathVariable double toaccount,
			@PathVariable double transfer, @PathVariable String password) {

		AdminDA da = new AdminDA();
		Createaccount data = da.moneytransfer(fromaccount, toaccount, transfer, password);
		return data;

	}

//	---------------------------- ************User Part*********** -------------------------------------

	// ------------------------ Check balance By User ---------------------------
	@CrossOrigin(origins = "*")
	@GetMapping("/checkbalancebyuser/{a_number}/{password}")
	public Createaccount checkbalance(@PathVariable double a_number, @PathVariable String password) {
		UserDA da = new UserDA();
		Createaccount data = da.checkBalancebyUser(a_number, password);
		return data;
	}

//	------------------------show all user data ------------------------------ 

	List<Createaccount> slist = new ArrayList<>();
	@CrossOrigin(origins = "*")
	@GetMapping("/showallCustomerData")
	public List<Createaccount> getShow() {

		UserDA da = new UserDA();
		slist = da.showallCustomer();

		return slist;
	}
	
//	------------------------show all customer transaction ------------------------------ 

	List<Transaction> transactionlist = new ArrayList<>();
	@CrossOrigin(origins = "*")
	@GetMapping("/getalltransaction")
	public List<Transaction> getalltransaction() {
		AdminDA da = new AdminDA();
		transactionlist = da.showalltransaction();

		return transactionlist;
	}

//	----------------- update user data -----------------------------------
	@CrossOrigin(origins = "*")
	@PutMapping("/update")
	public Createaccount doUpdate(@RequestBody Createaccount s) {

		UserDA da = new UserDA();
		Createaccount data = da.update(s);

		return data;
	}

//	----------------- delete user data ----------------------------------- deleteOnclick
	@CrossOrigin(origins = "*")
	@PostMapping("/delete")
	public Createaccount dodelete(@RequestBody Createaccount s) {

		UserDA da = new UserDA();
		Createaccount data = da.delete(s);

		return data;
	}

//	----------------- delete just on click way ----------------------------------- 
	@CrossOrigin(origins = "*")
	@DeleteMapping("/deleteOnclick/{a_number}")
	public Createaccount deleteOnclick(@PathVariable double a_number) {

		UserDA da = new UserDA();
		Createaccount data = da.deleteonclick(a_number);

		return data;
	}

//	--------------- get user by nid from applyaccount table ----------------
	@CrossOrigin(origins = "*")
	@GetMapping("/nid/{nid}")
	public Applyaccount getByNid(@PathVariable double nid) {

		AdminDA da = new AdminDA();
		Applyaccount data = da.searchByNid(nid);
		return data;
	}

//	--------------- get loan by nid from applyforloan table ----------------
	@CrossOrigin(origins = "*")
	@GetMapping("/loannid/{nid}")
	public Applyforloan getloanByNid(@PathVariable int nid) {

		AdminDA da = new AdminDA();
		Applyforloan data = da.searchloanByNid(nid);
		return data;
	}

//	---------------search and get bank statement  ----------------

	List<Transaction> slist1 = new ArrayList<>();
	@CrossOrigin(origins = "*")
	@GetMapping("/bankstatement/{a_number}/{predate}/{curdate}")
	public List<Transaction> serachbankstatement(@PathVariable double a_number, @PathVariable String predate,
			@PathVariable String curdate) {

		AdminDA da = new AdminDA();
		slist1 = da.serachbankstatement(a_number, predate, curdate);
		return slist1;
	}

}
