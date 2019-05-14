from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm


def signup_view(request):
    # check if is request POST
    if request.method == 'POST':
        # access to all the form data
        form = UserCreationForm(request.POST)
        # validate form data
        if form.is_valid():
            # save data in db
            form.save()
            return redirect('list')
    else:
        form = UserCreationForm()

    return render(request, 'accounts/signup.html', {'form': form})
