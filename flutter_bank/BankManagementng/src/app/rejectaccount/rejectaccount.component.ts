import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { AdminLoginService } from '../services/admin-login.service';
import { Applyaccount } from '../models/applyaccount';

@Component({
  selector: 'app-rejectaccount',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './rejectaccount.component.html',
  styleUrl: './rejectaccount.component.css'
})
export class RejectaccountComponent implements OnInit{
  nid: any;
  acctype: any;
  name: any;
  gender: any;
  mobile: any;
  email: any;
  address: any;
  date: any;
  mar_status: any;
  occupation: any;

  getData:any;
  constructor(private router:Router, private myservice:AdminLoginService) { 
    this.getData = this.router.getCurrentNavigation()?.extras.state?.["response"];
   
    this.nid = this.getData.nid;
    this.acctype = this.getData.acctype;
    this.name = this.getData.name;
    this.gender = this.getData.gender;
    this.mobile = this.getData.mobile;
    this.email = this.getData.email;
    this.address = this.getData.address;
    this.date = this.getData.date;
    this.mar_status = this.getData.mar_status;
    this.occupation = this.getData.occupation;

  }

  ngOnInit(): void {
  }

  delete() {
    this.getData = new Applyaccount(this.nid, this.acctype, this.name, this.gender, this.mobile, this.email, this.address, this.date, this.mar_status, this.occupation);
    this.myservice.rejectAccount(this.getData).subscribe(() => { });
    alert("Successfully Rejected");
    this.router.navigateByUrl("showapplyforaccount");
  }


}
