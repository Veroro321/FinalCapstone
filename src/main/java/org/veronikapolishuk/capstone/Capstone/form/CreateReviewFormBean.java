package org.veronikapolishuk.capstone.Capstone.form;

import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@ToString
@Getter
@Setter
public class CreateReviewFormBean {
//don't forget to add annotation for validation here!!!!

    private Integer reviewId;

    //    @NotNull(message = "Game ID is required")
    private Integer gameId;

    //    @NotNull(message = "User ID is required")
    private Integer userId;

    @NotNull(message = "Rating is required")
    private Integer rating;

    @NotNull(message = "Review text is required")
    private String reviewText;

    private Date reviewDate;

    private boolean recommended; //newly added

}
