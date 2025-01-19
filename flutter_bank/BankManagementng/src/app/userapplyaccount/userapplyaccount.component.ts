import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { UserRegistrationService } from '../services/user-registration.service';
import { Applyaccount } from '../models/applyaccount';

@Component({
  selector: 'app-userapplyaccount',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './userapplyaccount.component.html',
  styleUrl: './userapplyaccount.component.css'
})
export class UserapplyaccountComponent implements OnInit{
  constructor(private myservice: UserRegistrationService, private router: Router) { }
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

  alldata: any;

  ngOnInit(): void {
  }

  insert() {
    this.alldata = new Applyaccount(this.nid, this.acctype, this.name, this.gender, this.mobile, this.email, this.address, this.date, this.mar_status, this.occupation);
    this.myservice.createAccount(this.alldata).subscribe(() => {
      alert("Successfully submitted");
      this.router.navigateByUrl("userpage");
    });

  }



}
