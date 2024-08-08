package org.veronikapolishuk.capstone.Capstone.form;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@ToString
@Getter
@Setter
public class CreateReviewFormBean {


    private Integer reviewId;

    @NotNull(message = "Game ID is required")
    private Integer gameId;

    @NotNull(message = "User ID is required")
    private Integer userId;

    @NotNull(message = "Rating is required")
    private Integer rating;

    @NotNull(message = "Review text is required")
    private String reviewText;

    @Size(min = 10, max = 500, message = "Review text must be between 10 and 500 characters")
    private Date reviewDate;

    private boolean recommended; //newly added

}
