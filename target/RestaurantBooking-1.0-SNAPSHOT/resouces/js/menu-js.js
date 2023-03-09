

            let minusBtn = document.querySelector(".minus-btn");
            let plusBtn = document.querySelector(".plus-btn");
            let qtyInput = document.querySelector(".qty-input");

            minusBtn.addEventListener("click", () => {
                if (qtyInput.value > 1) {
                    qtyInput.value = parseInt(qtyInput.value) - 1;
                }
            });

            plusBtn.addEventListener("click", () => {
                qtyInput.value = parseInt(qtyInput.value) + 1;
            });

//----------------------------------------------------------------------------------
            $(document).ready(function () {

                var quantity = 0;
                $('.quantity-right-plus').click(function (e) {

                    // Stop acting like a button
                    e.preventDefault();
                    // Get the field name
                    quantity = parseInt($('#quantity').val());

                    // If is not undefined

                    $('#quantity').val(quantity + 1);

                    // Increment

                });

                $('.quantity-left-minus').click(function (e) {
                    // Stop acting like a button
                    e.preventDefault();
                    // Get the field name
                    quantity = parseInt($('#quantity').val());

                    // If is not undefined

                    // Increment
                    if (quantity > 0) {
                        $('#quantity').val(quantity - 1);
                    }
                });

            });