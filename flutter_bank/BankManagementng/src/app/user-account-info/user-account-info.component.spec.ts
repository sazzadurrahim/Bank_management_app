import { ComponentFixture, TestBed } from '@angular/core/testing';

import { UserAccountInfoComponent } from './user-account-info.component';

describe('UserAccountInfoComponent', () => {
  let component: UserAccountInfoComponent;
  let fixture: ComponentFixture<UserAccountInfoComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [UserAccountInfoComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(UserAccountInfoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
